puppet-usvn
===========

A puppet module to install [usvn](https://github.com/usvn/usvn) subversion management tool.

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

Installing other version:
```puppet
node default {
	class {'usvn':
		version => '1.0.6', # Default is 1.0.7
	}
}
```

Defining the Subversion repository of directories:
```puppet
node default {
	class {'usvn':
		svnpath => '/svn', # Default is /var/lib/usvn
	}
}
```

Uninstall the USVN:
```puppet
node default {
	class {'usvn':
		ensure => absent,
	}
}
```

Contact
-------

Principal developer:
	[Leonardo Thibes](http://leonardothibes.com) => [eu@leonardothibes.com](mailto:eu@leonardothibes.com)

Support
-------

Please log tickets and issues at our [Projects site](https://github.com/leonardothibes/puppet-env/issues)
