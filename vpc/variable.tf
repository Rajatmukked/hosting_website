variable "availability_zone" {
  type = list(string)
  default = [ "us-east-1a","us-east-1b",
              "us-east-1c","us-east-1d",
              "us-east-1e","us-east-1f" ]
}

variable "tag" {
  type = string
  default = "web_server"
}