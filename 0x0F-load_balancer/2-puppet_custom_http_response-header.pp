# puppet file that installs and configures nginx
package {'nginx':
  ensure  => installed,
}

file {'/var/www/html/index.html':
    content => 'Holberton School',
}

file_line { 'title':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _',
  line   => 'rewrite ^/redirect_me https://www.espn.com permanent;',
}

file_line { 'add header':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _',
  line   => 'add_header X-Served-By "$HOSTNAME";',
}

service {'nginx':
  ensure  => running,
  require => Package['nginx'],
}
