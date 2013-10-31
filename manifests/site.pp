class { 'apt': 
    always_apt_update    => false,
}

class { 'java':  
}

include jenkins
include jenkins::master

