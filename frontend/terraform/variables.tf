#Variable declaration
variable "s3_bucket_names" {
  type    = list(any)
  default = ["stephaniechester.live", "www.stephaniechester.live"]
}

# Setting variable for subdomain hostname
variable "hostname" {
  type = string
  default = "www.stephaniechester.live"
}