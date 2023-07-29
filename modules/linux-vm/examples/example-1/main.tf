module "linux-vm" {
  source     = "./modules/webserver"
  project_id = "mycoolproject-123"
  name       = "webserver-1"
  image      = "debian-cloud/debian-11"
  network    = "https://www.googleapis.com/compute/v1/projects/..."
  subnetwork = "https://www.googleapis.com/compute/v1/projects/..."
}
