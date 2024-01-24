# Create a file in Puppet

file { 'school':
  ensure  => 'present',
  content => 'I love you',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  path    => '/tmp/school',
}
