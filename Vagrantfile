Vagrant.configure("2") do |config|
  config.vm.define :master do |master|
    master.vm.hostname = "jmaster"
    master.vm.box      = "otomato/centos7"

    master.vm.network :private_network, ip: "192.168.111.111"
    master.vm.network :forwarded_port, guest: 443, host: 8443

  end

  config.vm.define :agent do |agent|
    agent.vm.hostname = "slave"
    agent.vm.box      = "otomato/centos7"

    agent.vm.network :private_network, ip: "192.168.111.222"

  end
end
