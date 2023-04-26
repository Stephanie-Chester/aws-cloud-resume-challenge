#Variable declaration
variable "s3_bucket_names" {
  type    = list(any)
  default = ["stephaniechester.com", "www.stephaniechester.com"]
}

# Setting variable for subdomain hostname
variable "subdomain" {
  type    = string
  default = "www.stephaniechester.com"
}

variable "domain_name_root" {
  type    = string
  default = "stephaniechester.com"
}