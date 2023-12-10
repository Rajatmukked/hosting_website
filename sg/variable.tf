variable "tag" {
  type = string
  default = "web_server"
}
variable "port" {
  type = object({
    ssh = number
    http = number
    https = number
    rds = number
  })
   
  default = ({
    http = 80
    https = 443
    rds = 1521  
    ssh = 22
  })
}
variable "vpc_id" { 
    description = "recieved from vpc module"
    
}
variable "vpc_cidr_block" { 
    description = "recieved from vpc module"
}
