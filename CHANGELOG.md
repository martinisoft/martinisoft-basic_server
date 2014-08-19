# 1.1.3 / 2014-08-19

## Bug Fixes

* Re-ordered Digital Ocean attribute to make sure default takes precedence

# 1.1.2 / 2014-08-19

## Bug Fixes

* Don't copy-paste attributes to a recipe without checking

# 1.1.1 / 2014-08-19

## Bug Fixes

* Moved tag based Digital Ocean apt attribute to the recipe.

# 1.1.0 / 2014-08-19

## Enhancements

* Renamed to server to be a base cookbook for servers. Don't need 'roles' where
  I'm going with this updated setup.
* Changed test kitchen provisioner to chef-zero to support search and data
  bags for users cookbook.
* Added 14.04 platform for testing.
* Rewrote tests with ServerSpec
* Update to 11.14.6 omnibus
* Updated build-essential cookbook to 2.0.6
* Added thor-scmversion thor tasks
* Setup VERSION file for metadata.rb
* Use Digital Ocean apt mirror where applicable

## Deprecations

* Removed ruby-gemset because of the new ChefDK workflow.
* Removed Vagrantfile, don't need this with Test Kitchen
* Removed data dog recipes for the time being.

# 1.0.0 / 2014-01-24

* Formal 1.0 release for the server cookbook.
