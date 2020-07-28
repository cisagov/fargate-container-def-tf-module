# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------
variable "region" {
  type = string
}

variable "namespace" {
  type = string
}

variable "stage" {
  type = string
}

variable "name" {
  type = string
}

variable "container_name" {
  type = string
}

variable "container_image" {
  type = string
}

variable "container_port" {
  type = number
}


# ------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------
variable "log_retention" {
  type    = number
  default = 7
}

variable "entrypoint" {
  type    = list(string)
  default = null
}

variable "environment" {
  type    = map(string)
  default = {}
}

variable "secrets" {
  type    = map(string)
  default = {}
}



