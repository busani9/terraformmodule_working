data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["dev"]
  }
}

resource "aws_subnet" "public_subnets" {
 vpc_id     = data.aws_vpc.vpc.id
 cidr_block = "10.0.5.0/24"

 tags = {
   Name = "publicdata"
 }
}

data "aws_ami" "latest" {
  most_recent = true
  owners      = ["068977569124"]
}
