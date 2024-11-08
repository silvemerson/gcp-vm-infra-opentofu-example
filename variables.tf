variable "project_id" {
  description = "ID do projeto GCP"
  type        = string
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "instance_name" {
  default = "opentofu-vm-instance"
}

variable "machine_type" {
  default = "e2-micro"
}