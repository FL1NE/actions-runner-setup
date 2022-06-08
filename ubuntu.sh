#! /bin/sh

sudo -i;
apt-get install -y nodejs npm;
npm install -y -g n;
n lts;
ln -sf /usr/local/bin/node /usr/bin/node;
apt-get purge -y nodejs npm;
node -v;
npm install -y -g yarn;
yarn -v;
apt-get update;
apt-get install -y ca-certificates curl gnupg lsb-release;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg;
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null;
apt-get update;
apt-get install -y docker-ce docker-ce-cli containerd.io;
docker run hello-world;
gpasswd -a guncys docker;
systemctl restart docker;
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose;
chmod +x /usr/local/bin/docker-compose;
docker-compose --version;
apt install -y mysql-client;
exit;