include common

node 'durandal.epfgames.com' {
  Package {
    provider => chocolatey
  }
  include sbrow
  include windows
}

node 'wafflemaker.local' {
  include sbrow
  include mac
}

node 'puppet.local' {
  include plex
}
