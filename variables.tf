variable "iam-user" {
  type = list(string)
  description = "This is to store the value of IAM user name"
  default = [ "demo-user-student7", "deo-user-student8", "demo-user-student9" ]
}

variable "tags" {
    type = map(string)
    description = "Name of the tags"
  default = {
    "ENvironment" = "dev"
  }
}