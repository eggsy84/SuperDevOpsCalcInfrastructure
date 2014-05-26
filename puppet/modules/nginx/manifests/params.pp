class nginx::params {
  case $::osfamily {
    Debian: {
      $exec_package_manager_update   = '/usr/bin/apt-get update'
    }
    default: {
      fail("Module nginx does not support your osfamily: ${::osfamily}")
    }
  }
}