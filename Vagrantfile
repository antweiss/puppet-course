Vagrant.configure("2") do |config|
  config.vm.define :master do |master|
    master.vm.hostname = "puppet"
#    master.vm.provider = "virtualbox"
    master.vm.box      = "otomato/centos7"
    #master.vm.box_url  = "https://s3-eu-west-1.amazonaws.com/xebia-vm/vagrant-boxes/centos-64-x86_64-minimal-pe-master.box"

    master.vm.network :private_network, ip: "192.168.111.111"
    master.vm.network :forwarded_port, guest: 443, host: 8443

    master.vm.synced_folder "manifests", "/etc/puppetlabs/puppet/manifests"
  end

  config.vm.define :agent do |agent|
    agent.vm.hostname = "agent"
    agent.vm.box      = "otomato/centos7"
 #   agent.vm.provider = "virtualbox"
    #agent.vm.box_url  = "https://s3-eu-west-1.amazonaws.com/xebia-vm/vagrant-boxes/centos-64-x86_64-minimal-pe-agent.box"

    agent.vm.network :private_network, ip: "192.168.111.222"

    #agent.vm.provision :puppet_server do |agent_puppet|
    #  agent_puppet.options = "--test --waitforcert"
    #end
  end
end
