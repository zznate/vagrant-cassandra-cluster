#include cassandra
#include apache2


#exec { "apt-get update" :	
#	command => "/usr/bin/apt-get update",
#}

#package { "apache2" :
#  require => Exec["apt-get update"],
#}

file { "/var/www" :
  ensure => link,
  target => "/vagrant",
  force => true,
}
include cassandra

#file { "/etc/cassandra/cassandra.yaml" :
#	ensure => file,
#	content => template("cassandra/templates/cassandra.yaml.erb"),
#}

