# puppet file that kills a process
exec { 'kill process':
  path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command => 'pkill -f killmenow'
  }
