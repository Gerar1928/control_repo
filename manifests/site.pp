node default {
  file { '/home/vagrant'
    ensure  => file
    content => 'hello world'
  }
}
