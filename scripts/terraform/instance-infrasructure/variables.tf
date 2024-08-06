variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

variable "instance_type" {
  description = "Value of the instance_type the EC2 instance"
  type        = string
  default     = "ami-04a81a99f5ec58529"
}

variable "region" {
  description = "Value of the region the EC2 instance"
  type        = string
  default     = "us-east-1"
}

variable "key_name" {
  description = "Value of the key name the EC2 instance"
  type        = string
  default     = "k8s2024"
}