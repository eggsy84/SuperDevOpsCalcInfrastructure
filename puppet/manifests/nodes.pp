node 'ip-172-31-5-66.eu-west-1.compute.internal' {
	# 
	# RESOURCE { NAME:
	# 	ATTRIBUTE => VALUE,
	#	...
	# }
	#
  file { '/tmp/hello':
		content => "Hello world\nPuppet Apply with Nodes", 
  }
  
  package { 'nginx':
    ensure => installed,
  }
}
