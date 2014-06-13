class usvn::params
{
	$ensure = 'present'

	# USVN
	$version  = '1.0.7'
	$download = 'https://github.com/usvn/usvn/archive'
	$svnpath  = '/var/lib/usvn'
	$srcdir   = '/usr/src'
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
