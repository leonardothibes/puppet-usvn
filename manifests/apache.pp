class usvn::apache inherits usvn::params
{
	define configure($url = $title, $baseurl, $port, $priority, $svnpath)
	{
		# Configuring Apache
		if !defined(Class['::apache']) {
			class {'::apache':
				default_mods  => true,
				default_vhost => false,
				mpm_module    => 'prefork',
			}
		}
		# Configuring Apache

		# Loading Apache modules
		usvn::apache::mod {'php5':}
		usvn::apache::mod {'rewrite':}
		usvn::apache::mod {'dav_svn':}
		usvn::apache::mod {'authz_svn':}
		# Loading Apache modules

		# Creating vhosts
		$docroot = "${usvn::params::instdir}/current/public"
		::apache::vhost {'usvn':
			serveraliases => [$url],
			priority      => $priority,
			port          => $port,
			docroot       => $docroot,
			override      => 'All',
		}
		::apache::vhost {'svn':
			priority        => $priority,
			port            => $port,
			docroot         => $docroot,
			custom_fragment => template('usvn/fragment.erb'),
			override        => 'All',
		}
		# Creating vhosts

		# Installing Mysql compatibility of PHP
		if !defined(Package['php5-mysqlnd']) {
			package {'php5-mysqlnd': ensure => present}
		}
		# Installing Mysql compatibility of PHP
	}

	define mod($module = $title)
	{
		if !defined(Class["::apache::mod::${module}"]) {
			::apache::mod {$module:}
		}
	}
}
