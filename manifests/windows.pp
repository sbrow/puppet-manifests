class windows {
  Package {
    provider => lookup('provider')
  }
  $user='Spencer'
  include ahk

  package {'aquasnap': }
  # TODO: Install Aquasnap license

  package {'virtualbox': }
  $startup = "C:/Users/${user}/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"
  file {"${startup}/f.lux":
    ensure => 'link',
    target => 'C:/Users/Spencer/AppData/Local/FluxSoftware/Flux/flux.exe'
  }
}
