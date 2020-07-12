apt-get update
apt-get upgrade
curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
apt install ./vagrant_2.2.9_x86_64.deb
apt-get -y install python3
apt-get -y install python-pip python-dev libffi-dev libssl-dev
pip install "pywinrm>=0.3.0"
apt-add-repository --yes --update ppa:ansible/ansible
apt install ansible
vagrant plugin install winrm
vagrant plugin install winrm-fs
vagrant plugin install winrm-elevated
