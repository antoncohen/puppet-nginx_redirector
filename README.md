# Nginx Redirector #

A Puppet module that ensures the nginx packages are installed and the
nginx service is running on Red Hat and Debian-based hosts. Configures
nginx for a specialized redirection task.

This is a highly specialized module. For general nginx hosting you should
probably use [puppetlabs-nginx](https://github.com/puppetlabs/puppetlabs-nginx).

Uses the $osfamily fact introduced in facter 1.6.2 to select the correct
parameter names.

## Usage ##

    include nginx_redirector

## Author ##

* Anton Cohen <anton@antoncohen.com>
* [Source](https://github.com/antoncohen/puppet-nginx_redirector)
* [Homepage](http://www.antoncohen.com/)
* [@antoncohen](http://twitter.com/antoncohen)
