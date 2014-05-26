class nginx ( 
  $site_name    = 'james_puppet_site_name',  
  $site_domain  = 'james_puppet_site_domain'
) {
  
  class { '::nginx::install': } ->
  class { '::nginx::config': }  ->
  class { '::nginx::service': } ->
  Class['nginx']
}
