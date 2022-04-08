provider "google" {
version = "3.11.0"
credentials = "${file("shefali.json")}"
project = "mohit-2022"
region = "us-central1"
zone = "us-central1-a"
}

resource "google_compute_instance" "default" {
  name         = "testshefali"
  machine_type = "f1-micro"
  zone         = "us-central1-a"
  desired_status = "RUNNING"


  boot_disk {
    initialize_params {
      image = "ubuntu-1604-xenial-v20201014"
    }
  }

  network_interface {
    network = "default"
    access_config {
	}
  }
}
