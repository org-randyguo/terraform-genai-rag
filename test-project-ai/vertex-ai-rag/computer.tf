resource "google_compute_instance" "test-project-ai" {
  project     = var.project_id
  name = "test-project-ai-vm"
  region = var.region
  zone = "${var.region}-a"
  machine_type = "e2-micro"
  network_interface {
    network = "default"
  }

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-focal-v20220712"
    }
  }
  # Some changes require full VM restarts
  # consider disabling this flag in production
  #   depending on your needs
  allow_stopping_for_update = true
}
