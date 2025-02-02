# Percona Toolkit
[![CLA assistant](https://cla-assistant.percona.com/readme/badge/percona/percona-toolkit)](https://cla-assistant.percona.com/percona/percona-toolkit)

*Percona Toolkit* is a collection of advanced command-line tools used by
[Percona](http://www.percona.com/) support staff to perform a variety of
MySQL and system tasks that are too difficult or complex to perform manually.

These tools are ideal alternatives to private or "one-off" scripts because
they are professionally developed, formally tested, and fully documented.
They are also fully self-contained, so installation is quick and easy and
no libraries are installed.

Percona Toolkit is developed and supported by Percona Inc.  For more
information and other free, open-source software developed by Percona,
visit [http://www.percona.com/software/](http://www.percona.com/software/).

## Local Development

Personally I like to use the commands line and develop live. I simply add 
the bin directory to my path and now any changes I make are immediately
available from anywhere. If you are like me you can run the quick-install.sh
script or enter the following on the command line.

```bash
./quick-install.sh
```

### Manually update `.bash_profile`
Add the following to your `.bash_profile` and you are on your way.
```
export PATH="<path to pt bin>:${PATH}"
```

Or even easier just run the following from the percona-toolkit root directory.
```bash
echo "export PATH=\"$(pwd)/bin:\${PATH}\"" >> ~/.bash_profile
```

## Installing

To install all tools, run:

```
perl Makefile.PL
make
make test
make install
```  

You probably need to be root to `make install`.  On most systems, the tools
are installed in /usr/local/bin.  See the INSTALL file for more information.

## Documentation

Run `man percona-toolkit` to see a list of installed tools, then `man tool`
to read the embedded documentation for a specific tool.  You can also read
the documentation online at [http://www.percona.com/software/percona-toolkit/](http://www.percona.com/software/percona-toolkit/).

## Version 3

Starting from version 3, there are new tools for MongoDB. These tools are written in Go so
in order to compile these program, this repo must me cloned into the GOPATH directory.  
Example:  

```
mkdir ${HOME}/go
export GOPATH=${HOME}/go
mkdir -p ${HOME}/go/src/github.com/percona
cd ${HOME}/go/src/github.com/percona
git clone https://github.com/percona/percona-toolkit.git
cd percona-toolkit/src/go
make
```


