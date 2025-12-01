 resource "iosxe_static_route" "default" {
          prefix          = "0.0.0.0"
          mask            = "0.0.0.0"
          next_hop_address = "10.99.99.100
        }
