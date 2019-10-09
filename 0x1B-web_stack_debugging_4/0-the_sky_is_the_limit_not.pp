# This puppet manifest increases the number of workers for nginx
file { '/etc/nginx/nginx.conf':
  ensure => present,
}
-> exec { 'sed file':
  command => 'sed -i \'s/ULIMIT="-n 15"/ULIMIT="-n 4096"\' /etc/default/nginx; nginx -s reload',
  cwd     => '/root',
  path    => ['/bin', '/usr/sbin'],
}
