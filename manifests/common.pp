class common {
  case $facts['os']['name'] {
      'windows': {
        include chocolatey
        Package {
          ensure => latest,
          provider => chocolatey
        }
      }
      'Darwin': {
        Package {
          ensure => latest,
          provider => homebrew
        }
      }
      default: {
        Package {
          ensure => latest
        }
      }
  }

  # Browsers
  package {'firefox':}
  package { lookup('google-chrome'): }

  # IDEs
  package { lookup('vscode'): }

  # Chat
  package {'discord':}
  if $facts['os']['name'] != 'windows' {
    # Skype is pre-installed on windows
    package {'skype': }
  }

  # Other
  package {'f.lux':}
  package {'joplin':
    ensure => present,
  }
  package {'teamviewer':}
  package {'virtualbox':
    ensure => lookup('virtualbox')['ensure']
  }

  # Enable puppet agent
  service { 'puppet':
    ensure => 'running',
    enable => true,
    # provider => 'launchd',
  }
}
