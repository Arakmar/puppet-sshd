define sshd::nagios(
  $port = 'absent',
  $ensure = 'present',
  $check_hostname = 'absent',
  $target_server_name = 'default'
) {
  $real_port = $port ? {
    'absent' => $name,
    default  => $port,
  }
  case $check_hostname {
    'absent': {
      nagios::type::service{"ssh_port_${name}":
        ensure        => $ensure,
        check_command => "check_ssh_port!${real_port}",
        target_server_name => $target_server_name
      }
    }
    default: {
      nagios::type::service{"ssh_port_host_${name}":
        ensure        => $ensure,
        check_command => "check_ssh_port_host!${real_port}!${check_hostname}",
        target_server_name => $target_server_name
      }
    }
  }
}
