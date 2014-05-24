# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "hashicorp/precise64"
	config.vm.synced_folder "puppet/", "/opt/puppet"

	config.vm.network :private_network, ip: "192.168.3.10"
	config.vm.hostname = "puppetagent.dev"
	config.hostsupdater.aliases = ["puppetagent.dev"]

	config.vm.provision "puppet" do |puppet|
		puppet.manifests_path = "puppet/manifests"
		puppet.manifest_file = "site.pp"
		puppet.module_path = "puppet/modules"
	end
end
