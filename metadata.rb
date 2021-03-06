name             "appbox"
maintainer       ""
maintainer_email ""
license          "0"
description      "Provides a set of recipes to setup a base app server"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.2"

supports "ubuntu"
supports "debian"
supports "centos"

depends "apt"
depends "yum"
depends "sudo"
depends "user"
depends "group"
depends "curl"
#depends "htop"
depends "git"
depends "tmux"
depends "ntp"
depends "sysstat"
depends "swap"
depends "hostsfile"
depends "yum-amazon"
depends "yum-epel"
#depends "chef-client"
