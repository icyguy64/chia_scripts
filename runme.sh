sudo apt-get update
sudo apt-get upgrade -y

# Install Git
sudo apt install git -y

# Checkout the source and install
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain

sh install.sh
sudo -s
. ./activate

chia init

nohup chia plots create -k 32 -b 4000 -n 1 -t /temp/ -d /plots/ -f 91eb09dd0d3dc02836b67a452863bc9f8026f77c96349c2d633dc666895aa4251b4668009436e020646e73d3dc7f1199 -p 837c002909bff979c821f765182cd151b36f177f0c6e9e0180fe8329f5cab41f48669197c53aac9e5c563226aad97f1a > logs.txt &