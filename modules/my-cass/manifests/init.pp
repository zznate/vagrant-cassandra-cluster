class cassandra {

    file { 'cassandra config dir' :
    path => '/etc/cassandra',
    ensure => directory,
  }
  file { 'test config file':
    path => '/etc/cassandra/cassandra.yaml',
    content => template("cassandra/cass1.yaml.erb"),
  }
  
}
