module "hpc" {
  source                                = "./solutions/hpc"
  allowed_cidr                          = var.remote_allowed_ips
  bastion_ssh_keys                      = var.bastion_ssh_keys
  bastion_subnets_cidr                  = var.vpc_cluster_login_private_subnets_cidr_blocks
  compute_image_name                    = var.compute_image_name
  compute_ssh_keys                      = var.compute_ssh_keys
  compute_subnets_cidr                  = var.vpc_cluster_private_subnets_cidr_blocks
  cos_instance_name                     = var.cos_instance_name
  dns_custom_resolver_id                = var.dns_custom_resolver_id
  dns_instance_id                       = var.dns_instance_id
  dns_domain_names                      = var.dns_domain_names
  enable_atracker                       = var.enable_atracker_on_cos
  enable_cos_integration                = var.enable_cos_integration
  enable_vpc_flow_logs                  = var.enable_vpc_flow_logs
  enable_vpn                            = var.vpn_enabled
  file_shares                           = var.custom_file_shares
  ibmcloud_api_key                      = var.ibmcloud_api_key
  key_management                        = var.key_management
  management_image_name                 = var.management_image_name
  network_cidr                          = var.vpc_cidr
  prefix                                = var.cluster_prefix
  resource_group                        = var.resource_group
  vpc                                   = var.vpc_name
  existing_subnet_cidrs                 = var.vpc_name != "null" && length(var.cluster_subnet_ids) == 1 ? [data.ibm_is_subnet.existing_subnet[0].ipv4_cidr_block, data.ibm_is_subnet.existing_login_subnet[0].ipv4_cidr_block] : []
  subnet_id                             = var.cluster_subnet_ids
  login_subnet_id                       = var.login_subnet_id
  zones                                 = var.zones
  contract_id                           = var.contract_id
  cluster_id                            = var.cluster_id
  management_node_count                 = var.management_node_count
  management_node_instance_type         = var.management_node_instance_type
  login_node_instance_type              = var.login_node_instance_type
  enable_fip                            = var.enable_fip
  TF_VALIDATION_SCRIPT_FILES            = var.TF_VALIDATION_SCRIPT_FILES
  kms_instance_name                     = var.kms_instance_name
  kms_key_name                          = var.kms_key_name
  ldap_admin_password                   = var.ldap_admin_password
  ldap_vsi_profile                      = var.ldap_vsi_profile
  enable_ldap                           = var.enable_ldap
  ldap_user_name                        = var.ldap_user_name
  ldap_user_password                    = var.ldap_user_password
  ldap_server                           = var.ldap_server
  ldap_basedns                          = var.ldap_basedns
  ldap_vsi_osimage_name                 = var.ldap_vsi_osimage_name
  enable_app_center                     = var.enable_app_center
  app_center_gui_pwd                    = var.app_center_gui_pwd
  app_center_high_availability          = var.app_center_high_availability
  skip_iam_authorization_policy         = var.skip_iam_authorization_policy
  hyperthreading_enabled                = var.hyperthreading_enabled
  scc_enable                            = var.scc_enable
  scc_profile                           = var.scc_profile
  scc_profile_version                   = var.scc_profile_version
  scc_location                          = var.scc_location
  certificate_instance                  = var.certificate_instance
  storage_security_group_id             = local.storage_security_group_id
  enable_cloud_monitoring               = var.enable_cloud_monitoring
  enable_cloud_monitoring_compute_nodes = var.enable_cloud_monitoring_compute_nodes
  cloud_monitoring_plan                 = var.cloud_monitoring_plan
  bastion_instance_name                 = local.bastion_instance_name
  bastion_instance_public_ip            = local.bastion_instance_public_ip
  bastion_security_group_id             = local.bastion_security_group_id
  bastion_ssh_private_key               = local.bastion_ssh_private_key
}
