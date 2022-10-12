# Definition of a class
class chrony {
# Installing NTP package
  package { 'chrony':
    ensure => 'present',
  }

# Configuring NTP configuration file
  file { '/etc/chrony.conf':
    ensure  => 'file',
    content => "server 0.centos.pool.ntp.org iburst\n",
  }

# Starting NTP service
  service { 'chronyd':
    ensure => 'running',
  }
}
