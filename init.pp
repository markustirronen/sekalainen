class kotitehtava1 {
	package {"apache2":
		ensure => "installed",
		allowcdrom => "true",
	}
	service {"apache2":
		ensure => "running",
		enable => "true",
		provider => "systemd",
	}
	file { "/home/xubuntu/tekstitiedosto.txt":
		content => "Merkkijono\n\nToinen merkkijono\n",
		owner => "xubuntu",
		group => "xubuntu",
	}
}

