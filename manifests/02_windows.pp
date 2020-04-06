if $facts['os']['name'] == 'windows' {
  # Install Aquasnap
  package {'aquasnap': }

  # TODO: Install Aquasnap license

  # Install AutoHotKey scripts
  package {'autohotkey': }

  file { "${documents}/AHKScripts":
    ensure => 'directory',
    owner  => $user,
  }

  file {"${home}/AHKScripts/CapsLockCtrlEscape.ahk":
    ensure => 'file',
    owner  => $user,
    source => 'puppet://modules/puppetmanifests/windows/CapsLockCtrlEscape.ahk'
  }
  file {"${home}/AHKScripts/gaming.ahk":
    ensure => 'file',
    owner  => $user,
    source => 'puppet://modules/puppetmanifests/windows/gaming.ahk'
  }
  file {"${home}/AHKScripts/main.ahk":
    ensure => 'file',
    owner  => $user,
    source => 'puppet://modules/puppetmanifests/windows/main.ahk'
  }

  # TODO: set main.ahk to run on startup
}
