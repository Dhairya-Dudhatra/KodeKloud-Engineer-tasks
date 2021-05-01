file { 'official.txt':
  ensure => present,
  path => '/opt/finance/official.txt',
  content => 'Welcome to xFusionCorp Industries!',
  mode => '0655'
}
