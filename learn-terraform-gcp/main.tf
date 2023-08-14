terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("qwiklabs-gcp-04-4ad870f074de-906f8f410234.json")
  project     = "qwiklabs-gcp-04-4ad870f074de"
  region      = "us-central1"
  zone        = "us-central1-a"
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  description             = "VPC network for testing"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "vpc_subnetwork" {
  name          = "terraform-network"
  ip_cidr_range = "10.20.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.name
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}

