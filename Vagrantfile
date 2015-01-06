
Vagrant::configure("2") do |config|

  # the Chef version to use
  config.omnibus.chef_version = "11.16.4"

  # disable vagrant-berkshelf
  config.berkshelf.enabled = false
  
  # common basebox for all VMs
  config.vm.box = "chef/ubuntu-12.04-i386"

  #
  # app provisioned with v0.2.0 of the top-level cookbook
  #
  config.vm.define :'app_v1' do |app_config|
    app_config.toplevel_cookbook.url = "https://github.com/tknerr/sample-toplevel-cookbook"
    app_config.toplevel_cookbook.ref = "v0.2.0"

    app_config.vm.hostname = "appv1.local"
    app_config.vm.network :private_network, ip: "192.168.40.30"

    app_config.vm.provision :chef_solo do |chef|
      chef.add_recipe "sample-app"
      chef.json = {
        :sample_app => {
          :words_of_wisdom => "Chuck Norris can guess 20 passwords at the same time"
        }
      }
    end
  end

  #
  # app provisioned with v0.1.2 of the top-level cookbook
  #  
  config.vm.define :'app_v2' do |app_config|
    app_config.toplevel_cookbook.url = "https://github.com/tknerr/sample-toplevel-cookbook"
    app_config.toplevel_cookbook.ref = "v0.1.2"
    app_config.vm.provision :chef_solo do |chef|
      chef.add_recipe "sample-app"
    end
  end

  #
  # app running on local vbox
  #
  config.vm.define :'app_local' do |app_config|

    app_config.vm.hostname = "applocal.local"
    app_config.vm.network :private_network, ip: "192.168.40.32"

    app_config.toplevel_cookbook.url = "file:///W:/repo/sample-toplevel-cookbook"
    app_config.vm.provision :chef_solo do |chef|
      chef.add_recipe "sample-app"
      chef.data_bags_path = "./data_bags"
      chef.environments_path = "./environments"
      chef.environment = "local"
    end
  end

end
