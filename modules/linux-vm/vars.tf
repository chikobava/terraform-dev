variable "project_id" {
  description = "ID of the project, where the VM will be created"
  type        = string
}

variable "region" {
  description = "VM region"
  default     = "europe-west3"
}

variable "name" {
  description = "VM Name"
  validation {
    condition     = length(var.name) > 0
    error_message = "The name value must not be null"
  }
  type = string
}

variable "machine_type" {
  description = "VM type in GCP"
  default     = "e2-medium"
  type        = string
}

variable "zone" {
  description = "VM zone"
  default     = "europe-west3-c"
  type        = string
}

variable "image" {
  description = "VM base image"
  default     = "debian-cloud/debian-9"
  type        = string
}

variable "network" {
  description = "Project network url"
  type        = string
}

variable "subnetwork" {
  description = "Subnet url"
  type        = string
}
