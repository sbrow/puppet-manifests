class mac {
  package { 'cleanmymac':
    # Updates itself
    ensure => present,
    provider => homebrew
  }
}
