
class { 'java': 
}

class { 'vertx':
    version => '2.0.2-final',
    boot_modules => ['io.vertx~mod-web-server~2.0.0-final']
}

#vertx::module { 'io.vertx~mod-web-server':
#    version => '2.0.0-final',
#    require => Class['vertx']
#}