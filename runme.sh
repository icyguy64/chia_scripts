sudo apt-get update
sudo apt-get upgrade -y
sudo apt install git -y
sudo mkfs -t ext4 /dev/nvme1n1
sudo mkfs -t ext4 /dev/nvme2n1
sudo mkfs -t ext4 /dev/nvme3n1
sudo mkfs -t ext4 /dev/nvme4n1
sudo mkfs -t ext4 /dev/nvme5n1
sudo mkfs -t ext4 /dev/nvme6n1
sudo mkfs -t ext4 /dev/nvme7n1
sudo mkfs -t ext4 /dev/nvme8n1
sudo mkdir /plots
sudo mkdir /temp
sudo mkdir /temp2
sudo mkdir /temp3
sudo mkdir /temp4
sudo mkdir /temp5
sudo mkdir /temp6
sudo mkdir /temp7
sudo mkdir /temp8
sudo mount /dev/nvme1n1 /plots/
sudo mount /dev/nvme0n1p1 /temp/
sudo mount /dev/nvme2n1 /temp2/
sudo mount /dev/nvme3n1 /temp3/
sudo mount /dev/nvme4n1 /temp4/
sudo mount /dev/nvme5n1 /temp5/
sudo mount /dev/nvme6n1 /temp6/
sudo mount /dev/nvme7n1 /temp7/
sudo mount /dev/nvme8n1 /temp8/
git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules
cd chia-blockchain
sh install.sh
mv ../runme2.sh .
sudo -s
