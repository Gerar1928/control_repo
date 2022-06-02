node default {
  file { '/root/test.txt':
    ensure  => file,
    content => 'hello world',
    owner   => 'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
}
