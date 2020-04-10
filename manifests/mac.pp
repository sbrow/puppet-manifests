class puppetmanifests::mac {
  package { 'cleanmymac':
    # Updates itself
    ensure => 'present'
  }
}
