class webserver (
  $vhost
) {
  
  class { 'nginx': }

	nginx::resource::upstream { 'superdevopscalc_app':
	  members => [
	    'localhost:3000',
	    'localhost:3001',
	    'localhost:3002',
	  ],
	  upstream_fail_timeout => '15s',
  }

  nginx::resource::vhost { "${vhost}":
    proxy => 'http://superdevopscalc_app',
  }


}
