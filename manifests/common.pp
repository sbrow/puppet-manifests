class common {
  file_line { 'puppet.conf':
    path  => lookup('puppet.conf'),
    line  => 'runinterval = 1800',
    match => '^runinterval\\s*='
  }

  # Enable puppet agent
  service { 'puppet':
    ensure => 'running',
    enable => true,
  }
}
