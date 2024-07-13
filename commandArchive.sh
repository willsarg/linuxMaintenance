#Quick SSH
#create a variable serverIP
read -p "Enter your serverIP: " serverIP
#create a variable username
read -p "Enter your username: " username
ssh username@serverIP

#Quick update and upgrade
sudo apt update -y && sudo apt upgrade -y

#Update and Upgrade - Possible to make this a bit clearer/cooler?

#Git Commands
sudo apt install git
cd /path/to/your/directory
git clone https://github.com/username/repository.git
git pull
git push