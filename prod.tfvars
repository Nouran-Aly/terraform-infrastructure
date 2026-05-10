vpc_cidr = "10.0.1.0/16"

region = "eu-central-1"

subnets_map = [ {
  name = "public_subnet1"
  cidr = "10.0.1.0/24"
  type = "public"
  az = "euc1-az1"
},
{
  name = "public_subnet2"
  cidr = "10.0.2.0/24"
  type = "public"
  az = "euc1-az2"
},
{
  name = "private_subnet1"
  cidr = "10.0.3.0/24"
  type = "private"
  az = "euc1-az1"
},
{
  name = "private_subnet2"
  cidr = "10.0.4.0/24"
  type = "private"
  az = "euc1-az2"
},

 ]