# 1.1.0 / Unreleased

* Renamed to server to be a base cookbook for servers. Don't need 'roles' where
  I'm going with this updated setup.
* Changed test kitchen provisioner to chef-zero to support search and data
  bags for user cookbook.
* Removed data dog recipes for the time being.
* Added 14.04 platform for testing.
* Rewrote tests with ServerSpec
* Update to 11.14.2 omnibus
* Updated build-essential cookbook to 2.0.4
* Removed Vagrantfile, don't need this with Test Kitchen

# 1.0.0 / 2014-01-24

* Formal 1.0 release for the server cookbook.
