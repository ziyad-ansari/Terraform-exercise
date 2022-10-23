# creating two vpc using count function 
resource "aws_vpc" "my_vpc" {
    count       = length(var.vpc_details) 
    cidr_block  = var.vpc_details.cidr_block[count.index]
    tags = {
      "Name" = var.vpc_details.tags[count.index]
    }
  
}

# creating subnets for different environments
resource "aws_subnet" "org_env_subnets" {
    count       = 4                           
    vpc_id      = aws_vpc.my_vpc[0].id        #using vpc_index
    cidr_block  = cidrsubnet(var.vpc_details.cidr_block[0],8,count.index) #using cidrsubnet function
    tags = {
      "Name"    = var.org_env_subnets_details.tags[count.index]
    }

    depends_on = [
      aws_vpc.my_vpc
    ]

}

resource "aws_subnet" "client_env_subnets" {
    count       = 4
    vpc_id      = aws_vpc.my_vpc[1].id      
    cidr_block  = cidrsubnet(var.vpc_details.cidr_block[1],8,count.index)
    tags = {
      "Name"    = var.client_env_subnets_details.tags[count.index]
    }

    depends_on = [
      aws_vpc.my_vpc
    ]

}