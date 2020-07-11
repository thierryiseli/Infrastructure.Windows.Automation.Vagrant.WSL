Vagrant.configure("2") do |config|
  config.vm.box = "thierryiseli/win10"
  config.vm.box_version = "0.1.0"

  config.vm.provider "virtualbox" do |vb|
    if ARGV[0] == 'up' and (defined?(VM_NAME)).nil?
      print "Please enter name for new virtual machine:\n"
      VM_NAME = STDIN.gets.chomp
      vb.name = VM_NAME
    end   
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook =  "ansible/playbook.yml"
    ansible.host_vars = {
        "default" => { "ansible_winrm_scheme" => "http" }
      }
    ansible.raw_arguments = ["-i", "ansible/hostsfile"]
  end
end
