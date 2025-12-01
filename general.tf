resource "iosxe_service" "gen1" {
  pad                                     = true
  password_encryption                     = true
  timestamps                              = true
  timestamps_debug                        = true
  timestamps_debug_datetime               = true
  timestamps_debug_datetime_msec          = true
  timestamps_debug_datetime_localtime     = true
  timestamps_debug_datetime_show_timezone = true
  timestamps_debug_datetime_year          = true
  timestamps_debug_uptime                 = true
  timestamps_log                          = true
  timestamps_log_datetime                 = true
  timestamps_log_datetime_msec            = true
  timestamps_log_datetime_localtime       = true
  timestamps_log_datetime_show_timezone   = true
  timestamps_log_datetime_year            = true
  timestamps_log_uptime                   = true
  tcp_keepalives_in                       = true
  tcp_keepalives_out                      = true
  compress_config                         = true
}

resource "iosxe_system" "systems" {
  hostname                    = "sw1CHI"
  ip_source_route             = false
  ip_domain_lookup            = true
  ip_domain_name              = "socpupets.com"
  ip_name_servers = ["1.2.3.4"]
}


resource "iosxe_username" "socadminnet" {
  name                = "socadminnet"
  privilege           = 15
  description         = "SocPuppets Admin "
  password_encryption = "0"
  password            = "MyBigBadPassword"
}

