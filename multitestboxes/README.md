## Create Project and Test Box
mkdir multitestboxes  
cd multitestboxes  

## Initialize configuration file with centos7 Box
vagrant init jasonc/centos7  

## Start all boxes
vagrant up  
vagrant status

## Connect to each box separately
vagrant ssh test1
vagrant ssh test2

## Ping one box from the other to check whether both are on the same network.
ping -c 3 10.9.8.5

## View mounted shared folder
cat /vagrant/Vagrantfile

## Stop the boxes
vagrant halt