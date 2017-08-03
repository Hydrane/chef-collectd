# chef-collectd

This is a Chef cookbook which installs and configures collectd. It tries to be minimalistic as possible whilst remaining flexible enough to configure anything in collectd through attributes to ease integration with other cookbooks.

## Requirements

### Platform

* Chef >= 12.19.36
* Ubuntu >= 15.04

## Attributes

The configuration is automatically generated from `node['collectd']['conf']`.

Example:
```
default['collectd']['conf']['FQDNLookup'] = true
default['collectd']['conf']['LoadPlugin df']['Interval'] = 3600
```
... will generate:
```
FQDNLookup true
<LoadPlugin df>
  Interval 3600
</LoadPlugin>
```
