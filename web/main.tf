module "web" {
source = "../modules/basicinfra"

cidr_block   =   "${var.cidr_block}"
tag   =   "${var.tag}"
subnet1_cidr_block   =   "${var.subnet1_cidr_block}"
availability_zone   =   "${var.availability_zone}"
subnet2_cidr_block   =   "${var.subnet2_cidr_block}"
terraform-key-pair   =   "${var.terraform-key-pair}"
ami   =   "${var.ami}"
instance_type   =   "${var.instance_type}"
availability_zone_1   =   "${var.availability_zone_1}"
autoscaling_group_min_size   =   "${var.autoscaling_group_min_size}"
autoscaling_group_max_size   =   "${var.autoscaling_group_max_size}"

}
