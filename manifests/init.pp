class usvn(
	$ensure  = $usvn::params::ensure,
	$version = $usvn::params::version,
	$svnpath = $usvn::params::svnpath,
	$hosturl = $usvn::params::hosturl,
	$baseurl = $usvn::params::baseurl,
	$dbname  = $usvn::params::dbname,
	$dbuser  = $usvn::params::dbuser,
	$dbpass  = $usvn::params::dbpass,
) inherits usvn::params {

	include usvn::dependencies
	case $ensure {
		'present': {
			usvn::install {$version:
				svnpath => $svnpath,
			}
			#usvn::mysql::configure {$dbname:
			#	dbuser => $dbuser,
			#	dbpass => $dbpass,
			#}
			#usvn::apache::configure {$hosturl: baseurl => $baseurl}
		}
		'absent': { notify {'Not implemented, yet...':} }
		default : { fail("Unsupported option for \"ensure\" param: ${ensure}") }
	}
}
