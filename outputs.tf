output "instance_names" {
  value = [
    for vm in google_compute_instance.vm :
    vm.name
  ]
}

output "instance_ips" {
  value = {
    for k, v in google_compute_instance.vm :
    k => v.network_interface[0].access_config[0].nat_ip
  }
}
``
