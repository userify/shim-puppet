# Puppet module which installs userify shim
class userify(
    $api_id,
    $api_key,
    $static_host = 'static.userify.com',
    $shim_host = 'configure.userify.com',
    $self_signed = 0
) {

  exec { 'userify':
    command => "curl -sS \"https://dashboard.userify.com/installer.sh\" | \
      static_host=\"${static_host}\" \
      shim_host=\"${shim_host}\" \
      self_signed=${self_signed} \
      api_id=\"${api_id}\" \
      api_key=\"${api_key}\" \
      sudo -sE"
    creates => '/opt/userify/shim.sh',
    path    => ['/usr/bin', '/usr/sbin']
  }

}
