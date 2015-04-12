# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

config.ssh.forward_agent = true
config.landrush.enabled = "true"
config.vm.boot_timeout = 90
config.vm.graceful_halt_timeout = 10

config.vm.box = "chef/centos-6.5"
config.vm.provision :shell, path: "libselinux.sh"

config.vm.provision "ansible" do |ansible|
  ansible.playbook = "/Volumes/500GB/TID/repos/pdihub/ansible/code/tools/pubkeys.yml"
end

# 256MB RAM for all instances
config.vm.provider "virtualbox" do |vb|
  vb.customize ["modifyvm", :id, "--nictype1", "virtio"]
  vb.customize ["modifyvm", :id, "--memory", "256"]
end

  config.vm.define "web" do |web|
    web.vm.hostname = "webserver1.vagrant.dev"
    web.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true
    web.vm.network "private_network", ip: "172.16.1.100"
  end
  config.vm.define "db" do |db|
    db.vm.hostname = "database1.vagrant.dev"
    db.vm.network "forwarded_port", guest: 3306, host: 3333, auto_correct: true
    db.vm.network "private_network", ip: "172.16.1.110"
  end
    config.vm.define "proxy" do |proxy|
    proxy.vm.hostname = "proxy1.vagrant.dev"
    proxy.vm.network "forwarded_port", guest: 443, host: 4443, auto_correct: true
    proxy.vm.network "private_network", ip: "172.16.1.120"
  end
   config.vm.define "repo" do |repo|
    repo.vm.hostname = "repo1.vagrant.dev"
    repo.vm.network "forwarded_port", guest: 8080, host: 8181, auto_correct: true
    repo.vm.network "private_network", ip: "172.16.1.130"
  end
end