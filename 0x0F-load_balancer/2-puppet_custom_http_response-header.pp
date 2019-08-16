# puppet file that installs and configures nginx
package {'nginx':
  ensure  => installed,
}

file_line { 'add_header':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _',
  line   => 'add_header X-Served-By "$HOSTNAME";',
}

service {'nginx':
  ensure  => running,
  require => Package['nginx'],
}
