variable "actions" {
  description = "List of actions what should be executed"
  type = list(string)
}
variable "sqs_name" {
  type = string
}

variable "alarm_prefix" {
  type = string
}

variable "tags" {
  default = {}
}


variable "approximate_number_messages_not_visible_threshold" {
  type = number
  default = 10000
}

variable "approximate_number_messages_not_visible_periods" {
  type = number
  default = 1
}

variable "approximate_number_messages_not_visible_period" {
  type = number
  default = 60
}



variable "approximate_number_messages_visible_threshold" {
  type = number
  default = 10000
}

variable "approximate_number_messages_visible_periods" {
  type = number
  default = 1
}

variable "approximate_number_messages_visible_period" {
  type = number
  default = 60
}



variable "approximate_age_of_oldest_message_threshold" {
  type = number
  default = 60*60 # 1 hour
  description = "In seconds"
}

variable "approximate_age_of_oldest_message_periods" {
  type = number
  default = 1
}

variable "approximate_age_of_oldest_message_period" {
  type = number
  default = 60
}