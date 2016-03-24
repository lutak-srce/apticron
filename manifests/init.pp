# Class: apticron
#
# This module manages apticron
#
class apticron {
  case $::operatingsystem {
    'debian': {
      package { 'apticron': ensure => present, }
      file { '/etc/cron.d/apticron':
        source => 'puppet:///modules/apticron/cron.d',
      }
     }
   'ubuntu': { }
   default:  { }
  }

}
