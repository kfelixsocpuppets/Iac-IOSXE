resource "iosxe_vlan" "DATA" {
  id   = 100
  name = "DATA"
  shutdown = false
}

resource "iosxe_vlan" "VOICE" {
  vlan_id = 120
  name    = "VOICE"
  shutdown = false
}

resource "iosxe_vlan" "STORAGE" {
  vlan_id = 130
  name    = "STORAGE"
  shutdown = false
}

resource "iosxe_vlan" "CAMERAS" {
  vlan_id = 140
  name    = "CAMERAS"
  shutdown = false
}

# DMZ are in vlan-id 201-299 range

resource "iosxe_vlan" "DMZ01" {
  vlan_id = 201
  name    = "DMZ01"
  shutdown = false
}

resource "iosxe_vlan" "DMZ02" {
  vlan_id = 202
  name    = "DMZ02"
  shutdown = false
}


resource "iosxe_vlan" "DMZ03" {
  vlan_id = 203
  name    = "DMZ01"
  shutdown = false
}

resource "iosxe_vlan" "DMZ04" {
  vlan_id = 204
  name    = "DMZ04"
  shutdown = false
}

