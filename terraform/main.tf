provider "google" {
credentials = "${file("shefali.json")}"
project = "mohit-2022"
region = "us-central1"
zone = "us-central1-a"
}



resource "google_compute_instance" "default" {
name = "terraform-test"
machine_type = "e2-medium"

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
