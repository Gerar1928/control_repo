class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDT6pd0MzZuMtxUwbHwpJK+2a6UVxmBvOltnAR+Nl+PVLjpmkNgiT6qtS+N5diFq6ofJJuELQ8B6tyzob+id3zMJTGO4Fracjeg5bb1verOGj+jNQJUyA468hf+MGm6YZS1cPZHOpwxWmbErzwBPb4Cq/1WpTCoHmD+OmVM7u+BHzfqP4wYOa8WLgVLM3iXM54HlwTOavUfv4MLg5/SfP+eI1P72UVui/Khb4R+MkJCAqs0fq+nknyUz6dJrFOewEL8mutaP89rpkT4JUDLIc3Q4J8vGD4FgxFUC+9lf2IjwfTFJdWWO4wLSQHlyRznjr4Ry92Ve2LhlX9DjZmDPLK9',
  }
}
