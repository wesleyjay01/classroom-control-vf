class users::admins {
  users::managed_users {'joe':}
  users::managed_users {'alice':
    group => 'staff',
  }
  users::managed_user {'aaron':
    group => 'staff',
  }
  group { 'staff':
    ensure => present,
  }
}
