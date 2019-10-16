resource "aws_cloudwatch_metric_alarm" "ApproximateNumberOfMessagesNotVisible" {
  for_each            = var.approximate_number_messages_not_visible_checks
  alarm_name          = "${var.alarm_prefix}: ${each.key} Approximate Number Of Messages Not Visible is high for ${var.sqs_name}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.approximate_number_messages_not_visible_periods
  threshold           = each.value
  metric_name         = "ApproximateNumberOfMessagesNotVisible"
  namespace           = "AWS/SQS"
  period              = var.approximate_number_messages_not_visible_period
  statistic           = "Average"
  alarm_description   = "Priority: ${each.key} Alarm is above of threshold: ${each.value}. Looks like Queue Consumer cannot process messages"
  treat_missing_data  = var.approximate_number_messages_not_visible_missing_data
  alarm_actions       = var.actions
  tags                = var.tags

  dimensions = {
    QueueName = var.sqs_name
  }
}

resource "aws_cloudwatch_metric_alarm" "ApproximateNumberOfMessagesVisible" {
  for_each            = var.approximate_number_messages_visible_checks
  alarm_name          = "${var.alarm_prefix}: ${each.key} Approximate Number Of Messages Visible is high for ${var.sqs_name}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.approximate_number_messages_visible_periods
  threshold           = each.value
  metric_name         = "ApproximateNumberOfMessagesVisible"
  namespace           = "AWS/SQS"
  period              = var.approximate_number_messages_visible_period
  statistic           = "Average"
  alarm_description   = "Priority: ${each.key} Alarm is above of threshold: ${each.value}. Looks like Queue Consumer is too slow to process messages"
  treat_missing_data  = var.approximate_number_messages_visible_missing_data
  alarm_actions       = var.actions
  tags                = var.tags

  dimensions = {
    QueueName = var.sqs_name
  }
}



resource "aws_cloudwatch_metric_alarm" "ApproximateAgeOfOldestMessage" {
  for_each            = var.approximate_age_of_oldest_message_checks
  alarm_name          = "${var.alarm_prefix}: ${each.key} Approximate Age Of Oldest Message is high for ${var.sqs_name}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.approximate_age_of_oldest_message_periods
  threshold           = each.value
  metric_name         = "ApproximateAgeOfOldestMessage"
  namespace           = "AWS/SQS"
  period              = var.approximate_age_of_oldest_message_period
  statistic           = "Maximum"
  alarm_description   = "Priority: ${each.key} Alarm is above of threshold: ${each.value}. Looks like Queue Consumer is too slow to process messages"
  treat_missing_data  = var.approximate_age_of_oldest_message_missing_data
  alarm_actions       = var.actions
  tags                = var.tags

  dimensions = {
    QueueName = var.sqs_name
  }
}