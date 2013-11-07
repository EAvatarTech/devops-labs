class { 'apt': 
}

class { 'java':  
}

class {'jenkins':
    install_java => false,
    lts => true,
    version => '1.509.4',
}

include jenkins::master

