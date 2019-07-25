data "aws_sqs_queue" "sqs" {
  name = var.sqs_name
}


variable "errors_threshold" {
  type    = number
  default = 1
}

variable "errors_evaluation_periods" {
  type    = number
  default = 1
}

variable "errors_period" {
  type    = number
  default = 60
}
