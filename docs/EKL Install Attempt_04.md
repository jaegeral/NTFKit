```
## Install ELK per http://www.intranetofstuff.com/the_tools/elk-stack.html ##

# Install elasticsearch
cd /nsm/download
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.5.1.deb
dpkg -i elasticsearch-5.5.1.deb
#  vi /etc/default/elasticsearch and set ES_JAVA_OPTS="-Xms512m -Xmx512m"
service elasticsearch restart
service elasticsearch status
systemctl enable elasticsearch && systemctl start elasticsearch

# Install Kibana and node.js
cd /nsm/download
curl -O http://node-arm.herokuapp.com/node_latest_armhf.deb
apt -y remove nodejs
dpkg -i ./node_latest_armhf.deb

wget https://artifacts.elastic.co/downloads/kibana/kibana-5.5.0-linux-x86_64.tar.gz
tar -xzvf kibana-5.5.0-linux-x86_64.tar.gz
mv kibana-5.5.0-linux-x86_64 /nsm/kibana
cd /nsm
chown -Rf elasticsearch:elasticsearch kibana/
cd kibana
npm install
cd node/bin
mkdir backup
mv node backup
mv npm backup
ln -s `which node` .
ln -s `which npm` .

```
