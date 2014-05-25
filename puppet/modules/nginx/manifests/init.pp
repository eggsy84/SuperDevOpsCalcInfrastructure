class nginx {
  
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update',
  }
  
  package { 'apache2.2-common':
    require => Exec['apt-get update'],
    ensure => absent,
  }
  
  package { 'nginx' :
    ensure => installed,
    require => Package['apache2.2-common'],
  }
	
  service { 'nginx':
    ensure => running,
    enable => true,
    require => Package['nginx'],
  }
  
  file { ['/var/www', '/var/www/puppetagent.dev']:
    ensure => 'directory',
  }
  
  file { '/var/www/puppetagent.dev/index.html':
    content => template('nginx/index.html.erb'),
    require => File['/var/www/puppetagent.dev'],
  }
}
