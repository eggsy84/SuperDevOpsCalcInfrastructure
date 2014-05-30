# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.box = "puppet_ubuntu_12.04"
	config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box"
	config.vm.synced_folder "puppet/", "/opt/puppet"

	config.vm.provision "puppet" do |puppet|
		puppet.manifests_path = "puppet/manifests"
		puppet.manifest_file = "site.pp"
		puppet.module_path = "puppet/modules"
	end
	
	config.vm.define "webserver" do |webserver|
    	webserver.vm.network :private_network, ip: "192.168.3.2"
		webserver.vm.hostname = "web1.eggsylife.co.uk"
		webserver.hostsupdater.aliases = ["web1.eggsylife.co.uk"]
  	end
end
