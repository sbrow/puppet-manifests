class mac {
  package { 'cleanmymac':
    # Updates itself
    ensure => installed,
    # Homebrew package is bugged.
    provider => appdmg,
    source => 'https://dl.devmate.com/com.macpaw.CleanMyMac4/CleanMyMacX.dmg',
  }
}
