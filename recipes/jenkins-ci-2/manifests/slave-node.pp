class { 'apt': 
}

class { 'java':  
}


class { 'jenkins::slave':
    masterurl => 'http://192.168.33.10:8080',
    ui_user => 'ADMIN_USER',
    ui_pass => 'API_KEY',
    install_java => false,
}
