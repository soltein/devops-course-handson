#!/bin/sh
sudo yum -y update

# Instala o pacote epel-release
sudo yum -y install epel-release

# Instala o Ansible
echo "Início da instalação do Ansible"
sudo yum -y install ansible

echo "Configurando hosts"
# Configuração do arquivo /etc/hosts
cat <<EOT >> /etc/hosts
10.10.1.2 control-node
10.10.1.3 app01
10.10.1.4 db01
EOT
