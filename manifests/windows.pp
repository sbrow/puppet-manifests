class puppetmanifests::windows {
  package {'aquasnap': }
  # TODO: Install Aquasnap license
  package {'autohotkey': }

  # Install AutoHotKey scripts
  file { "${documents}/AHKScripts":
    ensure => 'directory',
    owner  => $user,
  }

  $files = 'C:/ProgramData/PuppetLabs/code/environments/production/modules/puppetmanifests/files'

  file {"${documents}/AHKScripts/CapsLockCtrlEscape.ahk":
    owner  => $user,
    source => "${files}/windows/CapsLockCtrlEscape.ahk",
  }
  file {"${documents}/AHKScripts/gaming.ahk":
    owner  => $user,
    source => "${files}/windows/gaming.ahk"
  }
  file {"${documents}/AHKScripts/main.ahk":
    owner  => $user,
    source => "${files}/windows/main.ahk"
  }

  $startup = "${home}/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"
  # set main.ahk to run on startup
  file {"${startup}/main.ahk":
    ensure => 'link',
    target => "${documents}/AHKScripts/main.ahk"
  }
}
