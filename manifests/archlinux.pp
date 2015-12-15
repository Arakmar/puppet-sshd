class sshd::archlinux inherits sshd::linux {
  Package[openssh]{
    name => 'openssh',
  }

  Service[sshd]{
    name       => 'ssh',
    pattern    => 'sshd',
  }
}
