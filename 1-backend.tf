# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "backendformytf"
    prefix = "terraform/state"
    credentials = "thailand-433607-6c00ddb70942.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}


resource "google_compute_disk" "grafana_disk" {
  name  = "grafana-disk"
  type  = "pd-standard"
  zone  = "us-central1-a"
  size  = "10"
}
