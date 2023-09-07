variable "region" {
  descritpion = "AWS Region to use"
  type = string
  default = "us-east-1"
}

variable "environment" {
  description = "Environment"
  type = string
  default = "test"
}

variable "name" {
  description = "Name to use for resources"
  type = string
  default = "to do app"
}

variable "organization" {
  description = "Githug organization to use"
  type = string
  default = "Kipsu"
}

variable "circleci_cli_token" {
  description = "CircleCI CLI token to use"
  type = string
}

variable "tags" {
  description = "tags"
  type = map(string)
  default = {
    "managed_by" = "terraform"
  }
}