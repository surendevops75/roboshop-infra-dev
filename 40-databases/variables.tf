variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "sg_names" {
  default = [
    # database
    "mongodb", "redis", "mysql", "rabbitmq",
    # backend
    "catalogue", "user", "cart", "shipping", "payment",
    #frontend
    "frontend",
    #bastion
    "bastion",
    # front end load balancer
    "frontend_alb",
    #Backend alb
    "backend_alb"
  ]

}

variable "zone_id" {
  default = "Z10042263JCJ5ZTK2AT9J"
}

variable "domain_name" {
  default = "surendevops.fun"
}