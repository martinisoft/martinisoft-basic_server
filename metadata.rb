name             "martinisoft-basic_server"
maintainer       "Aaron Kalin"
maintainer_email "akalin@martinisoftware.com"
license          "Apache 2.0"
description      "Basic server role for Martini Software"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

supports "ubuntu"

%w{ ubuntu build-essential martinisoft-chef-client openssl martinisoft-openssh users }.each do |cb|
  depends cb
end
