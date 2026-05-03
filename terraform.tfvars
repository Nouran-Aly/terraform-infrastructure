vpc_cidr = "10.1.0.0/16"

subnets_map = [ {
  name = "public_subnet1"
  cidr = "10.1.1.0/24"
  type = "public"
  az = "us-east-1a"
},
{
  name = "public_subnet2"
  cidr = "10.1.2.0/24"
  type = "public"
  az = "us-east-1b"
},
{
  name = "private_subnet1"
  cidr = "10.1.3.0/24"
  type = "private"
  az = "us-east-1a"
},
{
  name = "private_subnet2"
  cidr = "10.1.4.0/24"
  type = "private"
  az = "us-east-1b"
},

 ]