node 'puppetagent' {
  nginx::website {'puppetagent.dev':
    site_domain => 'puppetagent.dev',
  }
  
  class { 'ntp':
    server => 'us.pool.ntp.org', 
  }
}
