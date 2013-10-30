Vagrant.configure("2") do |config|
  config.vm.box = "cassandra2_0"
  #config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.box_url = "./cassandra2_0.box"
  # provisioner is puppet
  #config.vm.provision "puppet"

  config.vm.define "cass1" do |cass1|
    cass1.vm.hostname = "cass1"
    cass1.vm.network :private_network, ip: "192.168.33.10"
    cass1.vm.provision "puppet"
    cass1.vm.provision "shell", inline: "sudo sed -i -e 's/127.0.0.1/192.168.33.10/' /etc/cassandra/cassandra.yaml"
    cass1.vm.provision "shell", inline: "sudo sed -i -e 's/localhost/192.168.33.10/' /etc/cassandra/cassandra.yaml"
  end

  #config.vm.define "cass2" do |cass2|
  #  cass2.vm.hostname = "cass2"
  #  cass2.vm.network :private_network, ip: "192.168.33.11"
  #end

  # box specific parameters like memory and CPU
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision "puppet" do |puppet|
     puppet.options = "--verbose --debug"
  end


end
