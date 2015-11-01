file { ‘motd’ :
	path => ‘/etc/motd’,
	ensure => present,
	content => ‘Welcome to puppet!’,
}
