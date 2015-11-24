# puppet-course

This is a 2 machine Vagrant environment for VirtualBox
with puppet manifest examples that we're going through at the puppet course.

In order to fully use this you need to install Vagrant - http://www.vagrantup.com/downloads
then clonr this repo, cd to the repo directory and do 'vagrant up'

This will bring up 2 VMs  - 'agent'  and 'master'. 

The /manifests folder will be mounted on 'master' machine at /vagrant/manifests.

