# Configure input variables
variable "region" {
    type    = string

  
}

variable "vpc_details" {
    type = object({
        cidr_block  = list(string)
        tags        = list(string)
    }) 
  
}

variable "org_env_subnets_details" {
    type = object({
        tags        = list(string)
    }) 
  
}

variable "client_env_subnets_details" {
    type = object({
        tags        = list(string)
    }) 

}

