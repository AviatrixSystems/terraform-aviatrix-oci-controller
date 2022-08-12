output "aviatrix_controller_public_ip" {
  description = "Controller public IP address."
  value = module.aviatrix_controller_build.aviatrix_controller_public_ip
}

output "aviatrix_controller_private_ip" {
  description = "Controller private IP address."
  value = module.aviatrix_controller_build.aviatrix_controller_private_ip
}

output "aviatrix_controller_url" {
  description = "Controller URL."
  value = module.aviatrix_controller_build.aviatrix_controller_url
}
