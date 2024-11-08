resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name

    access_config {
      # Para criar um IP público
    }
  }

  metadata = {
    ssh-keys = "araujo_emerson:${file("~/.ssh/id_rsa.pub")}"
  }
}