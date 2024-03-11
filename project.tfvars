# networking.tf
vpc = {
  name       = "TF-VPC"
  cidr_block = "10.0.0.0/16"
}

subnet = {
  name       = "TF-Subnet"
  cidr_block = "10.0.1.0/24"
}

internet-gateway = {
  name = "TF-Internet-Gateway"
}

security-group = {
  name        = "TF-Security-Group"
  description = "Anyone is allowed to access"
}

routing = {
  name       = "TF-Routing"
  cidr_block = "0.0.0.0/0"
}
# END networking.tf

# compute.tf

task-definition = {
  family = "TF-Task-Definition"
}

cluster = {
  name = "TF-Cluster"
}

service = {
  name = "TF-Service"
}

# END compute.tf