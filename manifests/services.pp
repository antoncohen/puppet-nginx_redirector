# Class: nginx_redirector::services
#
# This module manages the nginx services
#
# Parameters:
#
# Actions: Runs nginx
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class nginx_redirector::services {
  include nginx_redirector

  service { 'nginx':
    ensure => running,
    enable => true,
    hasrestart => true,
    hasstatus => true,
    require => Class['nginx_redirector::config'],
  }
}
