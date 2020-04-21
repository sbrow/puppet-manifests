class sbrow {
  Package {
    ensure   => latest,
    provider => lookup('provider')
  }

  user { 'sbrow':
    ensure => present,
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
  package {'f.lux':
    name => lookup('flux')
  }
  package {'joplin':
    ensure => present,
  }
  package {'teamviewer':}
  package {'virtualbox':
    ensure => lookup('virtualbox')['ensure']
  }
}
