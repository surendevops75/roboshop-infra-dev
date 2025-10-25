module "catalogue" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "${local.common_name_suffix}-catalogue"
  use_name_prefix = true
  description = "Security group for catalogue with custom ports open within VPC, egress all traffic"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
}