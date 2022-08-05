output "aviatrix_controller_public_ip" {
  description = "Controller public ip address."
  value = oci_core_instance.simple-vm.public_ip
}

output "aviatrix_controller_private_ip" {
  description = "Controller private ip address."
  value = oci_core_instance.simple-vm.private_ip
}

output "aviatrix_controller_url" {
  description = "Controller URL."
  value = "https://${oci_core_instance.simple-vm.public_ip}"
}
