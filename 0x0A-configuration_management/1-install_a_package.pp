# puppet file that installs the puppet-lint gem
package { 'puppet-lint':
  ensure   => 'installed',
  provider => 'gem'
}
