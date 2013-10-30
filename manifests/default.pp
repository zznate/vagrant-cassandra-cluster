
file { "/var/www" :
  ensure => link,
  target => "/vagrant",
  force => true,
}
#    file { 'cassandra config dir' :
#    path => '/etc/cassandra',
#    ensure => directory,
#  }
#  file { 'test config file':
#    path => '/etc/cassandra/cassandrai2.yaml',
#    content => "cass1.yaml.erb"
#  }

