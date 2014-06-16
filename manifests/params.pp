class usvn::params
{
	$ensure = 'present'

	# USVN
	$version  = '1.0.7'
	$download = 'https://github.com/usvn/usvn/archive'
	$srcdir   = '/usr/src'
	$svnpath  = '/var/lib/usvn'
	$instdir  = '/usr/share/usvn'
	# USVN

	# APACHE
	$baseurl = '/svn'
	$hosturl = 'svn.local'
	# APACHE

	# MYSQL
	$dbuser = 'usvn'
	$dbpass = 'usvn'
	$dbname = 'usvn'
	# MYSQL
}
