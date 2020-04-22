class nrpe_server::config {
  file {"/etc/nagios/nrpe.cfg":
    ensure => present,
    source => "puppet:///modules/nrpe_server/nrpe.cfg",
    mode => "0444",
    owner => "root",
    group => "root",
    require => Class["nrpe_server::install"],
    notify => Class["nrpe_server::service"],
  }
}