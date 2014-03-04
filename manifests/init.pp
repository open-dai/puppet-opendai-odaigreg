# Class: odaigerg
#
# This module manages odaigerg
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class odaigreg ($repo_server) {
  
$greg      = hiera('greg', undef)
notice("greg: ${greg}")
  package { 'unzip': ensure => present, }

  package { 'mysql': ensure => present, }

  # REQUIREMENTS
  # Java
  class { 'opendai_java':
    distribution => 'jdk',
    version      => '6u25',
    repos        => $repo_server,
  }
  
  class { 'wso2greg':
    download_site => "http://${repo_server}/",
    db_type=>$greg["db_type"],
    db_host=>$greg["db_host"],
    db_name=>$greg["db_name"],
    db_user=>$greg["db_user"],
    db_password=>$greg["db_password"],
    db_tag=>$greg["db_tag"],
    is_remote=>$greg["is_remote"],
    version =>"4.5.3",
    admin_password=>$greg["admin_pwd"],
    require       => [Class['opendai_java'], Package['unzip'], Package['mysql']]
  }
}