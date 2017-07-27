## Install ELK via docker ##

cd /nsm/download
git clone https://github.com/ind3x/rpi-docker-elk.git
cd rpi-docker-elk
curl -sSL https://get.docker.com | sh
curl -s https://packagecloud.io/install/repositories/Hypriot/Schatzkiste/script.deb.sh.deb > add-Hypriot-repository.sh
chmod +x add-Hypriot-repository.sh
./add-Hypriot-repository.sh
apt-get install docker-compose

