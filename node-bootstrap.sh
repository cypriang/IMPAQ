#!/usr/bin/env bash

# Get root up in here
sudo su

# Just a simple way of checking if we need to install everything
if [ ! -d "/var/www" ]
then

    # Update and begin installing some utility tools
    apt-get -y update
    apt-get install -y python-software-properties
    apt-get install -y vim git subversion curl
    apt-get install -y memcached build-essential

    # Add nodejs repo
    add-apt-repository -y ppa:chris-lea/node.js
    apt-get -y update

    # Install nodejs
    apt-get install -y nodejs
	
	#download
	wget -P /home/vagrant https://s3.amazonaws.com/com.ipq.m2mcc/node-swapnames.js
			
    # Victory!
    echo -e "\n You're all done! Your default node server should now be listening on http://192.168.0.10/ 
		\n node.js Server running at http://127.0.0.1:8881/ 
		\n Now run IMPAQ test: curl -i -X POST -d '{\"fname\":\"Onufry\", \"sname\":\"Zagłoba\"}' http://localhost:8881" 

	# Run it
	node /home/vagrant/node-swapnames.js > output.log &
	
fi;