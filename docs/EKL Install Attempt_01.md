```
PKG_SRC='deb https://artifacts.elastic.co/packages/5.x/apt stable main'
echo $PKG_SRC >> /etc/apt/sources.list.d/elastic-5.x.list
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

# Install elasticsearch
apt-get install elasticsearch
service elasticsearch restart

# Install Fluentd
apt-get -y install ruby
ruby -version
gem install fluentd

# Install Kibana
apt-get -y install nginx
cd /nsm/download
#git clone https://github.com/elastic/kibana.git
wget https://artifacts.elastic.co/downloads/kibana/kibana-5.5.0-i386.deb
sha1sum kibana-5.5.0-i386.deb
dpkg -x kibana-5.5.0-i386.deb /usr/share/kibana
service kibana start

# Download config files
mkdir -p /nsm/download/ELK_config
cd /nsm/download/ELK_config
wget https://assets.digitalocean.com/articles/fluentd/nginx.conf
wget -O default.json https://assets.digitalocean.com/articles/fluentd/default.json

# Download fluentd plugins
fluent-gem install fluent-plugin-elasticsearch
fluent-gem install fluent-plugin-record-former
fluent-gem install fluent-plugin-record-reformer




## Install ELK via docker ##
cd /nsm/download
git clone https://github.com/ind3x/rpi-docker-elk.git
cd rpi-docker-elk
curl -sSL https://get.docker.com | sh
curl -s https://packagecloud.io/install/repositories/Hypriot/Schatzkiste/script.deb.sh.deb > add-Hypriot-repository.sh
chmod +x add-Hypriot-repository.sh
./add-Hypriot-repository.sh
apt-get install docker-compose

```
