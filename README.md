### Native Install

1. First, ensure you have virtualenv-wrapper installed: (`pip install virtualenv-wrapper`)
2. Run `./regs_bootstrap.sh` to clone directories and install dependencies


### Vagrant Install
1. `brew cask install vagrant`
2. `vagrant up` to create and provision the VM
3. `vagrant ssh` to connect to the running VM
4. `cp /vagrant/regs_bootstrap.sh regs_bootstrap.sh && ./regs_bootstrap.sh` to clone directories and install dependencies
5. Continue from step 3 above.


### Start Server and Download XML files to start playing
1. From regulations-core/, start a server with `./bin/django runserver`
2. From regulations-site/, start a server with `./bin/django runserver 8001`
3. Download an XML file of a full regulation from [http://www.gpo.gov/](http://www.gpo.gov/), for example, [Title 12](http://www.gpo.gov/fdsys/pkg/CFR-2010-title12-vol1/content-detail.html) and put that in `regulations-parser/`
4. Run the parser against a regulation by running `python build_from.py CFR-2012-title12-vol8-part1004.xml 12 2011-18676 15 1693`
5. The results will write to the API, and can be viewed at [http://localhost:8001](http://localhost:8001)