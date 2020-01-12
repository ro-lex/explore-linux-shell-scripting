## Add Box to Vagrant  
vagrant box add jasonc/centos7

## Create Project and Test Box
mkdir testbox01  
cd testbox01  

## Initialize configuration file with centos7 Box
vagrant init jasonc/centos7  
vagrant up  
vagrant status  

## ssh into the Box (no need to provide box name if only one box exists in the Vagrantfile configuration)  
vagrant ssh  
Vagrant logs in using default user `vagrant` and password `vagrant`  
The default user has root privileges.  
The `root` user password is `vagrant`  

## Exit out of box  
exit  

## Stop box  
vagrant halt  

## Add hostname  
 config.vm.hostname = "testbox01"  

## Reload Box  
vagrant reload  

## Assign IP
config.vm.network "private_network", ip: "10.9.8.7"

## Reload Box  
vagrant reload  

## Test connectivity
ping -c 3 10.9.8.7

## Destroy Box
vagrant destroy