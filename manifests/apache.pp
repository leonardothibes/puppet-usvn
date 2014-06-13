class usvn::apache
{
	define configure($hosturl = $title, $baseurl = '/svn')
	{
		notify {"HOSTURL ${hosturl}":}
		notify {"BASEURL ${baseurl}":}
	}
}
