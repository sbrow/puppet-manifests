$user = 'Spencer'

case $facts['os']['name'] {
    'windows': {
      $home = "C:/Users/${user}"
    }
    default: {
      $home = "/home/${user}"
    }
}

$documents = "${home}/Documents"
