provider "google" {
  project     = var.project_id
  region      = var.region
}

resource "google_compute_disk" "linux-instance-disc" {
  name  = "${var.name}-boot-disk"
  type  = "pd-ssd"
  zone  = var.zone
  image = var.image
  labels = {
    environment = "dev"
  }
  physical_block_size_bytes = 4096
}

resource "google_compute_instance" "linux-instance-compute" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network
    subnetwork= var.subnetwork

    access_config {
      // Ephemeral public IP
    }
  }
}