# martinisoft-server cookbook

A cookbook to configure any server for Martini Software. This installs base
packages and defaults settings. This can be included in other wrapper cookbooks
for Martini Software as a global cookbook include.

## Platforms

* Ubuntu 12.04
* Ubuntu 14.04

## Attributes

None

## Recipes

### martinisoft-server::default

Sets up a base server that any cookbook can use for building upon

## Usage

### martinisoft-server::default

Include `martinisoft-server` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[martinisoft-server::default]"
  ]
}
```

## Testing

The test kitchen configuration has two suites with tests. You will want the
following attributes in your kitchen.yml if you wish for this stuff to work.

#### For the provisioner:

```yaml
provisioner:
  name: chef_zero
  require_chef_omnibus: '11.14.6'
  client_rb:
    node_name: walle
  data_bags_path: test/integration/data_bags
```

#### For the suite:

```yaml
openssh:
  server:
    port:
      - 22
      - 22022
chef_client:
  config:
    chef_server_url: "http://127.0.0.1:8889"
```

### default

Runs through an entire stack short of setting up user accounts

### digitalocean

Tests the digital ocean specific tag that changes the apt mirror

# License & Author

Copyright:: 2013-2014, Aaron Kalin (<akalin@martinisoftware.com>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

