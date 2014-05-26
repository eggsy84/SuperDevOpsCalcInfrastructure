
node 'puppetagent' {
  class { nginx:
    site_domain => 'puppetagent.dev',
  } 
}
