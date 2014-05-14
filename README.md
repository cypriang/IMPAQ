Testo 4 IMPAQ
=====
## Node.js / Ubuntu 12.04 64-bit Vagrant Box

### How to Use
1. Download and install VirtualBox by [clicking here](https://www.virtualbox.org/wiki/Downloads)
2. Download and install Vagrant by [clicking here](http://downloads.vagrantup.com/)
3. Clone this repository.
4. cd IMPAQ/
5. vagrant up
6. Wait for the server to download and install.

Once you run it for the first time, node will run node-swapnames.js [script](https://s3.amazonaws.com/com.ipq.m2mcc/node-swapnames.js) which is listening at http://localhost:8881
You can test script by runing following command:
`curl -i -X POST -d '{"fname":"Onufry", "sname":"Zagłoba"}' http://localhost:8881`
