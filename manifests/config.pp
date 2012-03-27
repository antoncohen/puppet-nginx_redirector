# Class: nginx_redirector::config
#
# This module manages nginx_redirector config file
#
# Parameters:
#
# Actions: Writes /etc/nginx/nginx.conf
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class nginx_redirector::config {
  include nginx_redirector

  File {
    owner => 'root',
    group => 'root',
    mode => 0644,
  }

  file { '/etc/nginx/nginx.conf':
    ensure => file,
    content => template('nginx_redirector/nginx/nginx.conf.erb'),
    require => Class['nginx_redirector::packages'],
    notify => Exec['nginx_redirector_reload'],
  }
}
