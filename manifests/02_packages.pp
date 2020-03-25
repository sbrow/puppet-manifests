# Browsers
package {'firefox':}
package {'google chrome':
  name => 'googlechrome'
}

# IDEs
package {'vscode':}

# Chat
package {'discord':}

# Other
package {'f.lux':}
package {'joplin':}
package {'teamviewer':
  name => 'teamviewer9'
}
package {'virtualbox':
  ensure => '6.1.2'
}
