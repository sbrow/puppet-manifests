case $facts['os']['name'] {
    'windows': {
      include chocolatey
      $provider = 'chocolatey'
    }
    default: {}
}

Package {
  ensure => latest,
  provider => $provider
}
