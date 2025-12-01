resource "iosxe_snmp_server" "scopuupessnmp" 
  contact                          = "sysnoc@socpuppets.com"
  location                         = "var.loc"
  enable_traps                     = true
  enable_traps_snmp_authentication = true
  enable_traps_snmp_coldstart      = true
  enable_traps_snmp_linkdown       = true
  enable_traps_snmp_linkup         = true
  enable_traps_snmp_warmstart      = true
  hosts = [
    {
      ip_address        = "10.99.99.200"
      community_or_user = "alertnocnms01"
      version           = "2c"
    }
  ]
  system_shutdown                           = true
  enable_traps_flowmon                      = true
  enable_traps_config                       = true
  enable_traps_event_manager                = true
  enable_traps_transceiver_all              = true
  enable_traps_bulkstat_collection          = true
  enable_traps_bulkstat_transfer            = true
  enable_traps_vrfmib_vrf_up                = true
  enable_traps_vrfmib_vrf_down              = true
  enable_traps_vrfmib_vnet_trunk_up         = true
  enable_traps_vrfmib_vnet_trunk_down       = true
  enable_traps_aaa_server                   = true
  source_interface_informs_loopback         = 1
  
users = [
    {
      username                         = "scosnmpsoc"
      v3_auth_algorithm                = "sha"
      v3_auth_password                 = "changeme123"
      v3_auth_priv_aes_algorithm       = "128"
      v3_auth_priv_aes_password        = "changeme123"
    }
  ]
}
