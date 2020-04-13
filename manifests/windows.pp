class windows {
  package {'aquasnap': }
  # TODO: Install Aquasnap license
  package {'autohotkey': }

  $user = "Spencer"
  $scripts = "C:/Users/${user}/AHKScripts"
  # Install AutoHotKey scripts
  file { "${scripts}":
    ensure => 'directory',
    owner  => $user,
  }

  $files = 'C:/ProgramData/PuppetLabs/code/environments/production/modules/puppetmanifests/files'

  file {"${scripts}/CapsLockCtrlEscape.ahk":
    owner  => $user,
    source => "${files}/windows/CapsLockCtrlEscape.ahk",
  }
  file {"${scripts}/gaming.ahk":
    owner  => $user,
    source => "${files}/windows/gaming.ahk"
  }
  file {"${scripts}/main.ahk":
    owner  => $user,
    source => "${files}/windows/main.ahk"
  }

  $startup = "C:/Users/${user}/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"
  # set main.ahk to run on startup
  file {"${startup}/main.ahk":
    ensure => 'link',
    target => "${scripts}/main.ahk"
  }
  file {"${startup}/f.lux":
    ensure => 'link',
    target => 'C:/Users/Spencer/AppData/Local/FluxSoftware/Flux/flux.exe'
  }
}
