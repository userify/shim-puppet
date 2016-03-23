# Userify Puppet Module

Simple puppet module which installs the [Userify](https://userify.com) agent.

## Requirements
* API id and key generated for a server group from https://console.userify.com.

## Basic Usage
```
class { 'userify':
    api_id => 'YOUR API ID',
    api_key => 'YOUR API KEY'
}
```
## TODO
* Turn this into a module worthy of publishing to puppet forge (i.e. rspec, metadata, versioning, etc...)
