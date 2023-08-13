terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("qwiklabs-gcp-02-098abe4711f3-9fdf8f1d76bc.json")

  project = "qwiklabs-gcp-02-098abe4711f3"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
  description = "VPC network for testing" 
}
