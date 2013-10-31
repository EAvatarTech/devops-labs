class { 'apt': 
}

class { 'java':  
}


class { 'jenkins::slave':
    masterurl => 'http://192.168.33.10:8080',
    ui_user => 'adminuser',
    ui_pass => 'adminpass',
    install_java => false,
}
