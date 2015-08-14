class mco_puppet {

  File {
    owner => 'pe-puppet',
    group => 'pe-puppet',
    mode  => '444',
  }

  if $pe_version != '3.8.1' {
    fail("The module ${module_name} is not compatible with PE ${::pe_version}")
  }

  file { '/opt/puppet/share/puppet/modules/puppet_enterprise/files/mcollective/plugins':
    ensure  => directory,
    recurse => remote,
    source  => "puppet:///modules/${module_name}/mcollective/plugins",
    before => Class['puppet_enterprise'],
  }

}
