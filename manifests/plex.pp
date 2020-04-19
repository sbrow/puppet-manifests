class plex {
  file_line { 'puppet.conf':
    path  => lookup('puppet.conf'),
    line  => 'runinterval = 86400',
    match => '^runinterval\\s*='
  }

  Package {
    provider => 'homebrew'
  }

  user { 'plex':
    ensure => present,
  }

  # Brew
  package { 'libaacs': }
  package { 'libbdplus': }
  package { 'libbluray': }
  package { 'libdvdcss': }
  # Casks
  package { 'handbrake': }
  package { 'makemkv': }
  package { 'plex-media-player': }
  package { 'plex-media-server': }
  package { 'vlc': }

  file { "/Users/plex/lib/libaacs.dylib":
    ensure => 'link',
    target => '/Applications/MakeMKV.app/Contents/lib/libmmbd.dylib'
  }

  file { "/Users/plex/lib/libbdplus.dylib":
    ensure => 'link',
    target => '/Applications/MakeMKV.app/Contents/lib/libmmbd.dylib'
  }
}
