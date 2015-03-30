# -*- mode: ruby -*-"
# vi: set ft=ruby :

#box_type  = "chef/centos-6.6"
box_type  = "puppetlabs/centos-6.6-64-nocm"
#box_type  = "chef/centos-7.0"
#box_type  = "ubuntu/trusty64"

Vagrant.configure("2") do |config|
  config.vm.box = "#{box_type}"
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 1
  end
  
  # For masterless, mount your salt file root
  config.vm.synced_folder "salt/roots/", "/srv/salt/"

  config.vm.network "private_network", ip: "192.168.56.100"
  config.vm.network "forwarded_port", guest: 80, host: 8080  

  ## Use all the defaults:
  config.vm.provision :salt do |salt|
    #salt.verbose = true
    salt.minion_config = "salt/minion"
    salt.run_highstate = true
  end
end
