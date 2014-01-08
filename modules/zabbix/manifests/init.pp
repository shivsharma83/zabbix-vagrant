class zabbix {

	require yum::zabbix
        require mysql
        require php5-mysql
        require php5
	package { 'zabbix20-server':
		ensure => 'latest',
	}
	package { 'zabbix20-web':
		ensure => 'latest',
		require => Package['zabbix20-server'],
	}
	package { 'zabbix20-agent':
		ensure => 'latest',
		require => Package['zabbix20-server'],
	}
        service { 'zabbix-server':
		require => Package['zabbix20-server'],
		ensure => 'running',
	}
        service { 'zabbix-agent':
		require => Service['zabbix-server'],
		ensure => 'running',
	}
}
