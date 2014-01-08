class mysql {

          package { 'mysql-server':
		  ensure => 'installed',
            }
          service { 'mysqld':
		  require => Package['mysql-server'],
                  ensure => running,
           }
}
