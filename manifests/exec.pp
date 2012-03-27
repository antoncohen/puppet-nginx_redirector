# Class: nginx_redirector::exec
#
# This module contains execs for nginx
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class nginx_redirector::exec {
  include nginx_redirector

  # This is so we can reload after a config change without doing a
  # stop/start restart.
  case $::osfamily {
    RedHat: {
      exec { 'nginx_redirector_reload':
        command => '/sbin/service nginx reload',
        returns => ['0', '7'], # RH returns 7 if service isn't running
        refreshonly => true,
      }
    }
    Debian: {
      exec { 'nginx_redirector_reload':
        command => '/usr/sbin/invoke-rc.d nginx reload',
        refreshonly => true,
      }
    }
    default: {
      fail("Unsupported osfamily: ${::osfamily}",
      "operatingsystem: ${::operatingsystem}, module ${module_name}",
      "only support osfamily RedHat and Debian")
    }
  }
}
