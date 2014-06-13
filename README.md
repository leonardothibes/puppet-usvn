puppet-usvn
===========

A puppet module to install usvn subversion management tool.

## Sample Usage
Install env and use the provided configuration defaults:
```puppet
node default {
	class {'usvn':}
}
```
or
```puppet
node default {
	include usvn
}
```

Contact
-------

Principal developer:
	[Leonardo Thibes](http://leonardothibes.com) => [eu@leonardothibes.com](mailto:eu@leonardothibes.com)

Support
-------

Please log tickets and issues at our [Projects site](https://github.com/leonardothibes/puppet-env/issues)
