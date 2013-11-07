
class { 'java': 
}

class { 'vertx':
    version => '2.0.2-final',
    startup_modules => {
     'io.vertx~mod-web-server' => { version => '2.0.0-final' },
    }
}

$webdir = $vertx::params::webdir

vertx::config {"io.vertx~mod-web-server":
  content => "{\n    \"port\": 8080,\n    \"web_root\": \"$webdir\"\n  }"
}

