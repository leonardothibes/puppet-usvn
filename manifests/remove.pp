define usvn::remove()
{
	include usvn::params
	exec {'usvn::remove::install':
		path    => '/bin',
		command => "rm -Rf ${usvn::params::instdir}",
	}
}
