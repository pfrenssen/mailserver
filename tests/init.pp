package{'libaugeas-ruby':
  ensure => installed,
  before => Class['mailserver']
}
package{'augeas-lenses':
  ensure  => installed,
  before  => Class['mailserver']
}

class { 'mailserver':
  ssl_key_file  =>'/etc/ssl/private/ssl-cert-snakeoil.key',
  ssl_cert_file =>'/etc/ssl/certs/ssl-cert-snakeoil.pem',
  dbpassword    =>'password',
  dbuser        =>'username',
}