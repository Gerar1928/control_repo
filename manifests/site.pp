node default {
  file { '/root/test.txt':
    ensure  => file,
    content => 'hello world',
    owner   => 'root',
  }
}
