node 'durandal.local' {
  include common
  include windows
}

node 'wafflemaker.local' {
  include common
  include mac
}

node 'puppet.local' {
  include plex
}
