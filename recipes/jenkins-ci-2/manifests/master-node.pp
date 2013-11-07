class { 'apt': 
}

class { 'java':  
}

package {'git':
    ensure => 'installed',
}


class {'jenkins':
    version => '1.509.4',
    install_java => false,
    lts => true,
#    domain => 'example.com',
#    admin_email => 'admin@example.com',
    plugin_hash => {
     'git' => { version => '2.0' },
     'parameterized-trigger' => { version => '2.21' },
     'credentials' => { version => '1.9.1', pinned => true, override => true },
     'ssh-credentials' => { version => '1.5.1', pinned => true, override => true },
     'git-client' => { version => '1.4.6' },
     'scm-api' => { version => '0.2' },
     'multiple-scms' => { version => '0.2' },
     'promoted-builds' => { version => '2.14' },
     'token-macro' => { version => '1.9' },
     'gradle' => { version => '1.23' },
     'openid' => { version => '1.7' },
     'build-pipeline-plugin' => { version => '1.4.2' },
     'build-name-setter' => { version => '1.3' },
     'jacoco' => { version => '1.0.13' },
     'clone-workspace-scm' => { version => '0.6' },
   } 

}


class {'jenkins::master':
  version => '1.10',
}

