class httpd {

        require zabbix
	package {'httpd':
	        ensure => 'installed',
	}

        service {'httpd':
		ensure => 'running',
		require => [Package['httpd'],Package['zabbix20-web']],
	}
}
