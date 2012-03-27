# Class: nginx_redirector::packages
#
# This module installs nginx packages
#
# Parameters:
#
# Actions: Installs the nginx packages
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class nginx_redirector::packages {
  include nginx_redirector

  package { "$nginx_redirector::params::nginx_package":
    ensure => installed,
  }
}
