### Native Install

1. First, ensure you have virtualenv and mkvirtualenv installed.
2. Run `./regs_bootstrap.sh` to clone directories and install dependencies
3. From regulations-core/, start a server with `./bin/django runserver`
4. from regulations-site/, start a server with `./bin/django runserver 8001`
5. Run the parser against a reg. The results will write to the API, and can be viewed at [http://localhost:8001](http://localhost:8001)

### Vagrant Install
1. `vagrant up` to create and provision the VM
2. `vagrant ssh` to connect to the running VM
3. `cp /vagrant/regs_bootstrap.sh regs_bootstrap.sh && ./regs_bootstrap.sh` to clone directories and install dependencies
4. Continue from step 3 above.