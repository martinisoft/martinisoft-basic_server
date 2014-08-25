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

Sets up a 

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

The test kitchen configuration has three suites with tests:

### default

Runs through an entire stack short of setting up user accounts

### users

Turns off kitchen mode and utilizes data bags to make user accounts

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

