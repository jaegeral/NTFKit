```
## Install ELK per http://www.intranetofstuff.com/the_tools/elk-stack.html ##

# Install elasticsearch
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.5.1.deb
dpkg -i elasticsearch-5.5.1.deb
#  vi /etc/default/elasticsearch and set ES_JAVA_OPTS="-Xms512m -Xmx512m"
service elasticsearch restart
service elasticsearch status

# Install Kibana and node.js
cd /nsm/download
curl -O http://node-arm.herokuapp.com/node_latest_armhf.deb
dpkg -i ./node_latest_armhf.deb
cd /nsm
git clone https://github.com/elastic/kibana.git
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
