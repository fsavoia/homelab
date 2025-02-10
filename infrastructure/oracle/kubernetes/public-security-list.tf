resource "oci_core_security_list" "public-security-list" {
  compartment_id = var.compartment_id
  vcn_id         = module.vcn.vcn_id

  display_name = var.public_security_list_name


  egress_security_rules {
    stateless        = false
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    protocol         = "all"
  }


  ingress_security_rules {
    stateless   = false
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    protocol    = "1"

    icmp_options {
      type = 3
      code = 4
    }
  }

  ingress_security_rules {
    stateless   = false
    source      = "147.161.132.196/32"
    source_type = "CIDR_BLOCK"
    protocol    = "6"

    tcp_options {
      min = 22
      max = 22
    }
  }

  ingress_security_rules {
    stateless   = false
    source      = "147.161.132.196/32"
    source_type = "CIDR_BLOCK"
    protocol    = "6"

    tcp_options {
      min = 6443
      max = 6443
    }
  }

  ingress_security_rules {
    stateless   = false
    source      = "141.144.202.55/32"
    source_type = "CIDR_BLOCK"
    protocol    = "all"
  }

  ingress_security_rules {
    stateless   = false
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    protocol    = "1"

    icmp_options {
      type = 3
    }
  }

}
