variable "region" {
  description = "AWS Region"
  type = string
  default = "us-east-1"
}

variable "tag" {
  description = "Default tags for all resources"
  type = string
  default = "Project"
}

variable "env" {
  description = "Default env for all resources"
  type = string
  default = "Dev"
}