variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "subnets_map" {
  type = list(object({
    name = string,
    cidr = string,
    type = string,
    az = string
  }))
}
