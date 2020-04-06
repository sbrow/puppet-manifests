case $facts['os']['name'] {
    'windows': {
      include chocolatey
      Package {
        ensure => latest,
        provider => 'chocolatey'
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
package {'skype':}

# Other
package {'f.lux':}
package {'joplin':}
package {'teamviewer':}
package {'virtualbox':
  ensure => '6.1.2'
}
