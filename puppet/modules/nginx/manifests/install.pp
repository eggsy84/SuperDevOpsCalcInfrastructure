class nginx::install {
  
  include nginx::params
  
  exec { $::nginx::params::exec_package_manager_update:
    command => $::nginx::params::exec_package_manager_update,
  }
  
  package { 'apache2.2-common':
    require => Exec[$::nginx::params::exec_package_manager_update],
    ensure => absent,
  }
  
  package { 'nginx' :
    ensure => installed,
    require => Package['apache2.2-common'],
  }
}