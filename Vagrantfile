
Vagrant::configure("2") do |config|

  # the Chef version to use
  config.omnibus.chef_version = "11.12.8"
  
  # common basebox for all VMs
  config.vm.box = "opscode_ubuntu-13.04_provisionerless"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-13.04_provisionerless.box"  

  #
  # app provisioned with v0.1.0 of the application cookbook
  #
  config.vm.define :'app_v1' do |app_config|
    app_config.app_cookbook.url = "https://github.com/tknerr/sample-application-cookbook"
    app_config.app_cookbook.ref = "v0.1.0"
    app_config.vm.provision :chef_solo do |chef|
      chef.add_recipe "sample-app"
    end
  end

  #
  # app provisioned with v0.1.2 of the application cookbook
  #  
  config.vm.define :'app_v2' do |app_config|
    app_config.app_cookbook.url = "https://github.com/tknerr/sample-application-cookbook"
    app_config.app_cookbook.ref = "v0.1.2"
    app_config.vm.provision :chef_solo do |chef|
      chef.add_recipe "sample-app"
    end
  end

  #
  # app running on local vbox
  #
  config.vm.define :'app_local' do |app_config|

    app_config.vm.hostname = "applocal.local"
    app_config.vm.network :private_network, ip: "33.33.42.15"

    app_config.app_cookbook.url = "file:///W:/repo/sample-application-cookbook"
    app_config.vm.provision :chef_solo do |chef|
      chef.add_recipe "sample-app"
      chef.data_bags_path = "./data_bags"
      chef.environments_path = "./environments"
      chef.environment = "local"
    end
  end

end
