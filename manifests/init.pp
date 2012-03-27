# Class: nginx_redirector
#
# This module manages nginx_redirector
#
# Parameters:
#
# Actions: Installs and configures nginx to act an HTTP redirector.
#
# Requires:
#
# Sample Usage:
#   include nginx_redirector
#
# [Remember: No empty lines between comments and class definition]
class nginx_redirector {
  include nginx_redirector::params
  include nginx_redirector::packages
  include nginx_redirector::config
  include nginx_redirector::sysctl
  include nginx_redirector::services
  include nginx_redirector::exec
}
