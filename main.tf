resource "google_compute_instance" "vm" {

  for_each = var.instances

  name         = each.key
  machine_type = each.value.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = each.value.image
    }
  }

  network_interface {
    subnetwork = each.value.subnet

    access_config {
    }
  }

  tags = each.value.tags

  labels = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
