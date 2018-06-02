class demo {

  file { '/etc/welcome':

   ensure => file,
   owner  => root,
   group  => root,
   mode   => '0755',
   content => "this is a welcome file",
  }

  file { '/etc/test':
   ensure  => directory,
    owner  => root,
   group  => root,
   mode   => '0755',
  }


}
