class userify(
    $api_id,
    $api_key
) {

    File {
        owner => 'root',
        group => 'root'
    }
    
    file { '/opt/userify':
        ensure => 'directory',
        mode => '0700'
    } ->
    
    file { '/opt/userify/creds.py':
        ensure => 'present',
        mode => '0600',
        content => template("${module_name}/creds.py.erb")
    } ->
    
    file { '/opt/userify/shim.sh':
        ensure => 'present',
        mode => '0700',
        content => template("${module_name}/shim.sh.erb")
    }
    
    cron { 'userify':
        ensure => present,
        command => "/opt/userify/shim.sh",
        user => 'root',
        require => File['/opt/userify/shim.sh']
    }
}