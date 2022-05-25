node default {
  file { '/home/vagrant/test.txt'
    ensure  => file
    content => 'hello world'
  }
}
