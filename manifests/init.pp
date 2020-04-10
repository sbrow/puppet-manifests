$user = 'Spencer'

case $facts['os']['name'] {
    'windows': {
      $home = "C:/Users/${user}"

      include chocolatey
      Package {
        ensure => latest,
        provider => 'chocolatey'
      }
    }
    'Darwin': {
      $home = "/Users/${user}"
      include homebrew
      Package {
        ensure => latest,
        provider => 'homebrew'
      }
    }
    default: {
      $home = "/home/${user}"
      Package {
        ensure => latest
      }
    }
}

$documents = "${home}/Documents"

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

if $facts['os']['name'] == 'windows' {
  include puppetmanifests::windows
}
if $facts['os']['name'] == 'Darwin' {
  include puppetmanifests::mac
}
