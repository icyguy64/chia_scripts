sudo apt-get update
sudo apt-get upgrade -y
sudo apt install git -y
sudo mkfs -t ext4 /dev/nvme1n1
sudo mkdir /plots
sudo mkdir /temp
sudo mount /dev/nvme2n1 /plots/
sudo mount /dev/nvme1n1 /temp/
sudo mount /dev/nvme0n1 /temp/
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain
sh install.sh
mv ./runme2.sh .
sudo -s
