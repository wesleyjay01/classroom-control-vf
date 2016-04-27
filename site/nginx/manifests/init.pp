#
class nginx {
  package {'nginx':
    ensure => present,
    }

  file {'/var/www':
    ensure => directory,
  }

  file {'/etc/nginx/conf.d':
    ensure => directory,
  }

  file {'/var/www/index.html':
    ensure => file,
    source => 'puppet:///modules/nginx/files/index.html',
  }

#  file {'/etc/nginx/nginx.conf':
#    ensure => file,
#    source => 'puppet:///modules/nginx/files/nginx.conf',
3    require => Package['nginx'],
#    notify => Service['nginx'],
#  }
  

#  file {'/etc/nginx/conf.d/default.conf':
#    ensure => file,
#    source => 'puppet:///modules/nginx/files/default.conf',
#    require => Package['nginx'],
#    notify => Service['nginx'],
#  }
  
#  service { 'nginx':
#    ensure => running,
#    enable => true,
#  }
}
