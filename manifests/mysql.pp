class usvn::mysql
{
	define configure($dbname = $title, $dbuser, $dbpass)
	{
		notify {"DBNAME: ${dbname}":}
		notify {"DBUSER: ${dbuser}":}
		notify {"DBPASS: ${dbpass}":}
	}
}
