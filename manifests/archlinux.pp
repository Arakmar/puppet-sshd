class sshd::archlinux inherits sshd::linux {
  Package[openssh]{
    name => 'openssh-server',
  }

  Service[sshd]{
    name       => 'ssh',
    pattern    => 'sshd',
  }
}
