# Class: nginx_redirector::params
#
# This module manages nginx_redirector parameters
#
# Parameters: Lots
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class nginx_redirector::params {

  $keepalive_timeout = '0'
  $nginx_ipv4 = $::ipaddress_eth0
  $nginx_ipv6 = $::ipaddress6_eth0
  # Allows files to take about 40% of 256MB RAM
  $sysctl_file_max = '105472'
  $worker_processes = $::processorcount
  $worker_rlimit_nofile = '22528'
  $worker_connections = '21504'

  $nginx_package = $::osfamily ? {
    RedHat => 'nginx',
    Debian => 'nginx', # nginx is a dummy for nginx-full
    default => 'nginx',
  }

  $nginx_user = $::osfamily ? {
    RedHat => 'nginx',
    Debian => 'www-data',
    default => 'nginx',
  }

}
