# This puppet manifest increases the number of workers for nginx
file { '/etc/nginx/nginx.conf':
  ensure => present,
}
-> exec { 'sed file':
  command => 'sed -i \'s/worker_processes 4/worker_processes 12/\' /etc/nginx/nginx.conf; nginx -s reload',
  cwd     => '/root',
  path    => ['/bin', '/usr/sbin'],
}
