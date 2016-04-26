#
class memcached {
  package {'memcached':
    ensure => present,
    }
  file {'/etc/sysconfig/memcached':
    ensure => file,
#    source  => 'puppet:///modules/ntp/ntp.conf',
    require => Package['memcached'],
    }
  service { 'memcached':
    ensure => running,
    enable => true,
    subscribe => File['/etc/sysconfig/memcached'],
  }
}
