# Class: nginx_redirector::sysctl
#
# This module configures sysctl for nginx
#
# Parameters:
#
# Actions: Writes /etc/sysctl.conf
#
# Requires: puppetlabs-sysctl
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class nginx_redirector::sysctl {
  include nginx_redirector

  # For more connections to worker processes
  sysctl::value { 'fs.file-max':
    value => $nginx_redirector::params::sysctl_file_max,
  }
}
