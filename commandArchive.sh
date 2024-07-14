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


#Directory Tree
sudo apt install tree

#File System Consistency Check
fsck

#Disk Usage
ls -lh / | sort -k 4

#Note to anyone reading this including future me, this is literally just a scratch pad for commands.
#Co-Pilot generated mostly.

#Disk Usage Human Readable and Sorted by Size
du -h | sort -n

#of the root directory
du -h / | sort -n

#top level only
du -h --max-depth=1 / | sort -n

#convert everything to MB
du du -h --max-depth=1 -m / | sort -n

#for every top level directory, tree view the contents of the first secondary folder
du -h --max-depth=1 / | sort -n | cut -f2 | xargs -I {} du -h --max-depth=1 {}

#use the tree command to display the result
du -h --max-depth=1 / | sort -n | cut -f2 | xargs -I {} du -h --max-depth=1 {} | tree

# ls / | tree only show the first level of directories
ls / | tree
#that didn't work, so let's try this
ls / | tree -L 1

#Gets the history of commands
cat ~/.bash_history

#PrintF uses C syntax to format strings
printf "That'll be $%0.2f, my friend.\n" 3
#That'll be $3.00, my friend. , prints the number 3 as a 2 decimal float

#yes
#the yes operator can be piped into other commands to simulate user input
yes | sudo apt update && sudo apt upgrade

#seq
seq 1 10

#what's up with shells
echo $SHELL
chsh -s /bin/bash
chsh -s /bin/zsh
chsh -s /bin/sh
chsh -s /bin/ksh