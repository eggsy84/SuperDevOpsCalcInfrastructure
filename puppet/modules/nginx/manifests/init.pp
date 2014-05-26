class nginx ( 
  $site_domain
) {
  
  class { 'nginx::install': 
    
  }
  class { 'nginx::config': 
    domain      => $site_domain
  } 
  class { 'nginx::service': 
    
  }
}
