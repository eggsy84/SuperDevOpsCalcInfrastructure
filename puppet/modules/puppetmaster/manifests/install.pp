class puppetmaster::install {
  
  exec { 'download_deb':
    command => '/usr/bin/wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb',
  }
  
  exec { 'dpkg_install':
   command => '/usr/bin/dpkg -i puppetlabs-release-precise.deb',
   require => Exec['download_deb'],
  }
  
  exec { 'puppetmaster_update':
    command => '/usr/bin/apt-get update',
    require => Exec['dpkg_install'],
  }
  
  package { 'puppetmaster' :
    ensure => installed,
    require => Exec['puppetmaster_update'],
  }
}