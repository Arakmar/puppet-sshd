class sshd::client::debian inherits sshd::client::linux {
  package{
    'openssh-client':
  }
}
