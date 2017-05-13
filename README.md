# maxlin Cookbook
[![Build Status](https://travis-ci.org/linweihs/maxlin-cookbook.svg?branch=master)](https://travis-ci.org/linweihs/maxlin-cookbook)

**Note** Work-In-Progress. This cookbook will continue adding more stuff over the time.

---

What is this ?
-------------
A cookbook to configure basic linux setup upon bootstrapping new nodes. In addition to that, the cookbook will further configure nginx, setup nodejs enviroment over the coruse of time when I have more time to structure the cookbook.

## Requirements

### Platforms
TBD

## Attributes
TBD

e.g.
### maxlin-cookbook::default

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['maxlin-cookbook']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### maxlin-cookbook::default

TODO: Write usage instructions for each cookbook.

e.g.
Just include `maxlin-cookbook` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[maxlin-cookbook]"
  ]
}
```

## Contributing
1. Setup chef-solo enviroment

## License and Authors
- Authors: Wei-Hsiang(Max) Lin (<max.linweihs@gmail.com>)

