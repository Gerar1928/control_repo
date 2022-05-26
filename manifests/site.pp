node default {
  file { '/root/test':
    ensure  => file,
    content => 'hello world',
    owner   => 'root',
  }
}
