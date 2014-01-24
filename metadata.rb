name             "martinisoft-basic_server"
maintainer       "Aaron Kalin"
maintainer_email "akalin@martinisoftware.com"
license          "Apache 2.0"
description      "Basic server role for Martini Software"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.0"

supports "ubuntu"

depends "build-essential"
depends "martinisoft-chef-client"
depends "martinisoft-datadog"
depends "martinisoft-openssh"
depends "openssl"
depends "ubuntu"
depends "users"
