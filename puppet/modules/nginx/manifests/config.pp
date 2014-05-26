class nginx::config ( $site_domain ) {
  
  $site_name = $name
  
  file { "/etc/nginx/sites-enabled/${site_name}.conf":
    content => template('nginx/vhost.conf.erb'),
    notify => Service['nginx'],
    require => Package['nginx'],
  }
  
  file { ["/var/www", "/var/www/${site_name}"]:
    ensure => 'directory',
  }
  
  file { "/var/www/${site_name}/index.html":
    content => template('nginx/index.html.erb'),
    require => File["/var/www/${site_name}"],
  }
}