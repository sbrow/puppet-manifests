class mac {
  package { 'cleanmymac':
    # Updates itself
    ensure => installed,
    # Homebrew package is bugged.
    provider => appdmg,
    source => 'https://dl.devmate.com/com.macpaw.CleanMyMac4/CleanMyMacX.dmg',
  }

  package { 'gpg-suite':
    ensure => latest,
    provider => homebrew
  }

  file { '/Users/sbrow/.gnupg/gpg-agent.conf':
    content => 'pinentry-program /usr/local/MacGPG2/libexec/pinentry-mac.app/Contents/MacOS/pinentry-mac
enable-ssh-support
default-cache-ttl 600
max-cache-ttl 7200
'
  }
}
