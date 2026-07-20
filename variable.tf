variable "project_id" {
    type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}
variable "instances" {
  type = map(object({
    machine_type = string
    image = string
    subnet = string
    tags = list(string)
  }))
}

