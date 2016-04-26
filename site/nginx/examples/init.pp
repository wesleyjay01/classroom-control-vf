class nginx {
  package {'nginx':
    ensure => present,
    }

  file {'/etc/sysconfig/memcached':
    ensure => file,
    source  => 'puppet:///modules/memcached/memcached',
    require => Package['memcached'],
    }

  service { 'nginx':
    ensure => running,
    enable => true,
    subscribe => File['/etc/sysconfig/memcached'],
  }
}
