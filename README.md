# Userify Puppet Module

This puppet module replaces the default [installer script](https://shim.userify.com/installer.sh) provided by [Userify](https://userify.com) in favor
of a pure puppet approach to installing and configuring userify.

#### Key Differences
The following are key differences between the default installer and what this module does:
* The default _shim.sh_ has the random sleep timer removed.
* CRON is utilized to execute _/opt/userify/shim.sh_ every minute vs. the default behaviour of _shim.sh_ executing itself.

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
* Make the cron schedule configurable

