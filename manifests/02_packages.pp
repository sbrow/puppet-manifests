# Browsers
package {'firefox':}
package {'google chrome':
  name => 'googlechrome'
}

package {'virtualbox':
  ensure => '6.1.2'
}
