class sshjafail2ban {

        package { ssh:
                ensure => installed,
                allowcdrom => true,
        }

        file { "/etc/ssh/sshd_config":
                content => template("sshjafail2ban/sshd_config"),
                notify => Service[ssh],
        }

        service { ssh:
                ensure => running,
                enable => true,
                provider => systemd,
        }

        package { fail2ban:
                ensure => installed,
                allowcdrom => true,
        }

        file { "/etc/fail2ban/jail.local":
                content => template("sshjafail2ban/jail.local"),
                notify => Service[fail2ban]
        }

        service { fail2ban:
                ensure => running,
                enable => true,
                provider => systemd,
        }
}
