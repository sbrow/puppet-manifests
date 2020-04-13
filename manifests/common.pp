class common {
  case $facts['os']['name'] {
      'windows': {
        include chocolatey
        Package {
          ensure => latest,
          provider => 'chocolatey'
        }
      }
      'Darwin': {
        include homebrew
        Package {
          ensure => latest,
          provider => 'homebrew'
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
  package {'google chrome':
    name => 'googlechrome'
  }

  # IDEs
  package {'vscode':}

  # Chat
  package {'discord':}
  if $facts['os']['name'] != 'windows' {
    # Skype is pre-installed on windows
    package {'skype':}
  }

  # Other
  package {'f.lux':}
  package {'joplin':}
  package {'teamviewer':}
  package {'virtualbox':
    ensure => '6.1.2'
  }

  # Enable puppet agent
  service { 'puppet':
    ensure   => 'running',
    enable   => true,
    provider => 'launchd',
  }
}
