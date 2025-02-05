data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

resource "oci_core_instance" "ubuntu_amd_instance" {
  count               = 2
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = var.compartment_id
  shape               = var.amd_shape

  source_details {
    source_id   = var.amd_source_image_id
    source_type = "image"
  }

  display_name = "worker-node-0${count.index + 1}"

  create_vnic_details {
    assign_public_ip = true
    subnet_id        = oci_core_subnet.vcn-public-subnet.id
  }
  metadata = {
    ssh_authorized_keys = file(var.ssh_public_key_path)
  }
  preserve_boot_volume = false
}

resource "oci_core_instance" "ubuntu_arm_instance_master" {
  display_name         = "master-node-01"
  availability_domain  = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id       = var.compartment_id
  preserve_boot_volume = false
  shape                = var.arm_shape

  source_details {
    source_id   = var.arm_source_image_id
    source_type = "image"
  }

  shape_config {
    ocpus         = var.arm_ocpus
    memory_in_gbs = var.arm_memory_in_gbs
  }

  create_vnic_details {
    assign_public_ip = true
    subnet_id        = oci_core_subnet.vcn-public-subnet.id
  }

  metadata = {
    ssh_authorized_keys = file(var.ssh_public_key_path)
  }
}

resource "oci_core_instance" "ubuntu_arm_instance_worker" {
  display_name         = "worker-node-03"
  availability_domain  = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id       = var.compartment_id
  shape                = var.arm_shape
  preserve_boot_volume = false

  source_details {
    source_id   = var.arm_source_image_id
    source_type = "image"
  }

  shape_config {
    ocpus         = var.arm_ocpus
    memory_in_gbs = var.arm_memory_in_gbs
  }

  create_vnic_details {
    assign_public_ip = true
    subnet_id        = oci_core_subnet.vcn-public-subnet.id
  }
  metadata = {
    ssh_authorized_keys = file(var.ssh_public_key_path)
  }
}
