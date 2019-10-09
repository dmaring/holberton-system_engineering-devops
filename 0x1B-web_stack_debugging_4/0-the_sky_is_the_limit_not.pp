# This puppet manifest changes the ULIMIT for nginx
exec { 'sed file':
  command => 'sed -i \'s/15/4096\' /etc/default/nginx; service nginx restart',
  path    => ['/bin', '/usr/sbin', '/usr/bin'],
}
