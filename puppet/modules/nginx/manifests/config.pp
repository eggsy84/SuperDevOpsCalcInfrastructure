class nginx::config ( $domain ) {
 
  $site_domain = $domain
  
  file { "/etc/nginx/sites-enabled/${site_domain}.conf":
    content => template('nginx/vhost.conf.erb'),
    notify => Service['nginx'],
    require => Package['nginx'],
  }
  
  file { ["/var/www", "/var/www/${site_domain}"]:
    ensure => 'directory',
  }
  
  file { "/var/www/${site_domain}/index.html":
    content => template('nginx/index.html.erb'),
    require => File["/var/www/${site_domain}"],
  }
}