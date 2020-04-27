class ahk ($user, $script_dir = "C:/Users/${$user}/AHKScripts") {
  package {'autohotkey': }

  $scripts = "c:/users/${user}/ahkscripts"
  $files = "puppet:///modules/ahk"

  file { "${scripts}":
    ensure => 'directory',
    owner  => $user,
  }

  file {"${scripts}/CapsLockCtrlEscape.ahk":
    owner  => $user,
    source => "${files}/CapsLockCtrlEscape.ahk",
  }
  file {"${scripts}/gaming.ahk":
    owner  => $user,
    source => "${files}/gaming.ahk"
  }
  file {"${scripts}/main.ahk":
    owner  => $user,
    source => "${files}/main.ahk"
  }

  $startup = "C:/Users/${user}/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"
  # set main.ahk to run on startup
  file {"${startup}/main.ahk":
    ensure => 'link',
    target => "${scripts}/main.ahk"
  }
}
