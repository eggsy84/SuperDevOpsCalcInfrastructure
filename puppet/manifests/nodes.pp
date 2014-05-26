

node 'puppetagent' {
  
  nginx::website {'puppetagent.dev':
    site_domain => 'puppetagent.dev',
  }
  
}
