define usvn::install($version = $title, $svnpath)
{
	include usvn::params

	# Config
	File {
		ensure => directory,
		owner  => root,
		group  => root,
		mode   => 0755,
	}
	Exec {
		path => ['/bin','/usr/bin'],
	}
	# Config

	# Params
	$urlsource   = "${usvn::params::download}/${version}.tar.gz"
	$pkgname     = "usvn-${version}.tar.gz"
	$destination = "${usvn::params::srcdir}/${pkgname}"
	# Params

	# Creating source directory
	if !defined(File[$usvn::params::srcdir]) {
		file {$usvn::params::srcdir:}
	}
	# Creating source directory

	# Downloading the package
	# Downloading the package
}
