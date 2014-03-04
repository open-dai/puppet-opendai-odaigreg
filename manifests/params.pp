# === Class: moodle::params
#
#  The WSO2greg configuration settings idiosyncratic to different operating
#  systems.
#
# === Parameters
#
# None
#
# === Examples
#
# None
#
# === Authors
#
# Luca Gioppo <gioppoluca@libero.it>
#
# === Copyright
#
# Copyright 2012 Luca Gioppo
#
class odaigreg::params {

  $db_host            = "wso2mysql.$::domain"
  $db_name            = 'odaigreg'
  $db_user            = 'odaigreg'
  $db_password        = 'odaigreg1'
  $download_site      = 'http://dist.wso2.org/products/governance-registry/'
  $product_name       = 'wso2greg'
  $admin_password       = 'odaiadmin1'
}
