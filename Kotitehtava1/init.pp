class kotitehtava1 {
	package {"apache2":
		ensure => "installed",
		allowcdrom => "true",
	}

	file {"/home/xubuntu/tehtava1.txt":
		content => "Merkkijono\n Toinen merkkijono\n",
    owner => "xubuntu",
    group => "xubuntu",
 	}
}
