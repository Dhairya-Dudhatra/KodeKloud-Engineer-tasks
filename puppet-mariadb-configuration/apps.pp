node 'stdb01.stratos.xfusioncorp.com' {
    include mysql_database
}

class mysql_database {
    package { 'mariadb-server':
        ensure => installed,
    }
  
    service { 'mariadb':
        ensure => running,
        enable => true,
    }
    
    mysql::db { 'database_name':
    user => 'user_name',
    password => 'user_password',
    host => 'localhost',
    grant => ['ALL'],
    }
}
