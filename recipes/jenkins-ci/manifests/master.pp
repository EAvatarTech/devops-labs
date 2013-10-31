class { 'apt': 
}

class { 'java':  
}

class {'jenkins':
    install_java => false,
}

include jenkins::master

