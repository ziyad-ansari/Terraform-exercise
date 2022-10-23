# Defining variables
region = "us-west-2"

vpc_details = {
  cidr_block = [ "192.168.0.0/16", "10.168.0.0/16" ]
  tags = [ "vpc1", "vpc2" ]
}

org_env_subnets_details = {
  tags = [ "app", "web", "cache", "db" ]
}

client_env_subnets_details = {
  tags = [  "usr1", "usr2",  "usr3", "usr4" ]
}