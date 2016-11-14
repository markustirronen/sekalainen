class kotitehtava3 {
	package {"firefox":
		ensure => "installed",
		allowcdrom => "true",
	}

	file {"/etc/firefox/syspref.js":
		content => 'pref("browser.startup.homepage","https://www.hs.fi");',
	}
}
