# This puppet manifest increases the number of workers for nginx
exec { 'sed file':
  command => 'sed -i \'s/ULIMIT="-n 15"/ULIMIT="-n 4096"\' /etc/default/nginx; service nginx restart',
  path    => ['/bin', '/usr/sbin', '/usr/bin'],
}
