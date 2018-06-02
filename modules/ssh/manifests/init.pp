class ssh  {

    package {'openssh-package':
        name    => 'openssh',
        ensure  => present,
     }

    file {'/etc/ssh/sshd_config':
     ensure   => file,
     owner    => root,
     group    => root,
     require  => Package['openssh-package'],
     source  => 'puppet:///modules/ssh/sshd_config',
    }

    service {'sshd':
      ensure => running,
      enable => true,
      subscribe => File['/etc/ssh/sshd_config'],
  } 










}
