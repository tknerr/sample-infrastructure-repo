# README

This is a sample infrastructure repository using the [vagrant-application-cookbooks](https://github.com/tknerr/vagrant-application-cookbooks) plugin to resolve the application cookbook dependencies for each of the `Vagrantfile`'s VMs in isolation. 

The aim is to get the whole infrastructure up and running with a single `vagrant up`, with all the cookbook dependency resolution happening under the hood.

# TODO

Other stuff that should be demonstrated here: 
- [ ] encrypted data bags
- [ ] different providers (e.g. lxc, aws)
- [ ] Cheffile vs. Berksfile
- [ ] different provisioners (puppet?)

# USAGE

First, install the required vagrant plugins via [bindler](https://github.com/fgrehm/bindler):

	vagrant plugin bundle

Now you can bring up and provision the VMs in the `Vagrantfile` with a single command:

	vagrant up app_v1
	vagrant up app_v2


