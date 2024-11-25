#!bin/bash

echo -e "\033[1;32m
██████╗ ██╗   ██  ███████╗  ███████╗  ███████╗  
██╔══██╗ ██╗ ██║  ██║   ██║ ██║   ██║ ██║   ██║
██████╔╝  ████║   ██║   ██║ ██║   ██║ ██║   ██║
██╔══██╗   ██╔╝   ██║   ██║ ██║   ██║ ██║   ██║
██║  ██║   ██║    ███████║  ███████║  ███████║
╚═╝  ╚═╝   ╚═╝    ╚══════╝  ╚══════╝  ╚══════╝
\033[0m"
echo -e "\033[1;34m==================================================\033[1;34m"
echo -e "\033[1;34m@Ryddd | Testnet, Node Runer, Developer, Retrodrop\033[1;34m"

sleep 4

# install python
echo -e "\033[1;32Add repository and installing python3...\033[0m"
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install -y python3.12 python3.12-venv python3.10-venv

# install pip
echo -e "\033[1;32Installing pip3...\033[0m"
sudo curl -sS https://bootstrap.pypa.io/get-pip.py | python3.12 

# clone github
echo -e "\033[1;32Clone github repository...\033[0m"
git clone https://github.com/ryzwan29/hana-tf-games.git
cd hana-tf-games/

# create environment python
echo -e "\033[1;32Create python environment...\033[0m"
python3 -m venv env
source env/bin/activate

# install requirements
echo -e "\033[1;32Install the requirements...\033[0m"
pip3 install -r requirements.txt