variable "actions" {
  description = "List of actions what should be executed"
  type        = list(string)
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


variable "approximate_number_messages_not_visible_checks" {
  type = map(number)
  default = {
    P1 = 5000
    P2 = 4000
    P3 = 3000
    P4 = 2000
    P5 = 1000
  }
}

variable "approximate_number_messages_not_visible_periods" {
  type    = number
  default = 1
}

variable "approximate_number_messages_not_visible_period" {
  type    = number
  default = 60
}

variable "approximate_number_messages_not_visible_missing_data" {
  type    = string
  default = "notBreaching"
}



variable "approximate_number_messages_visible_checks" {
  type = map(number)
  default = {
    P1 = 25000
    P2 = 20000
    P3 = 15000
    P4 = 10000
    P5 = 5000
  }
}

variable "approximate_number_messages_visible_missing_data" {
  type    = string
  default = "notBreaching"
}

variable "approximate_number_messages_visible_periods" {
  type    = number
  default = 1
}

variable "approximate_number_messages_visible_period" {
  type    = number
  default = 60
}



variable "approximate_age_of_oldest_message_checks" {
  type = map(number)
  default = {
    P1 = 60 * 60 * 5 # 5 hour
    P2 = 60 * 60 * 4 # 4 hour
    P3 = 60 * 60 * 3 # 3 hour
    P4 = 60 * 60 * 2 # 2 hour
    P5 = 60 * 60     # 1 hour
  }
  description = "In seconds"
}


variable "approximate_age_of_oldest_message_missing_data" {
  type    = string
  default = "notBreaching"
}


variable "approximate_age_of_oldest_message_periods" {
  type    = number
  default = 1
}

variable "approximate_age_of_oldest_message_period" {
  type    = number
  default = 60
}