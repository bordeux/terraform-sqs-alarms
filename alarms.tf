resource "aws_cloudwatch_metric_alarm" "ApproximateNumberOfMessagesNotVisible" {
  alarm_name          = "${var.alarm_prefix}: Approximate Number Of Messages Not Visible is high"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.approximate_number_messages_not_visible_periods
  threshold           = var.approximate_number_messages_not_visible_threshold
  metric_name         = "ApproximateNumberOfMessagesNotVisible"
  namespace           = "AWS/SQS"
  period              = var.approximate_number_messages_not_visible_period
  statistic           = "Average"
  alarm_description   = "Alarm is above of threshold: ${var.approximate_number_messages_not_visible_threshold}. Looks like Queue Consumer cannot process messages"
  treat_missing_data  = "breaching"
  alarm_actions       = var.actions
  tags                = var.tags

  dimensions = {
    QueueName = data.aws_sqs_queue.sqs.name
  }
}

resource "aws_cloudwatch_metric_alarm" "ApproximateNumberOfMessagesVisible" {
  alarm_name          = "${var.alarm_prefix}: Approximate Number Of Messages Visible is high"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.approximate_number_messages_visible_periods
  threshold           = var.approximate_number_messages_visible_threshold
  metric_name         = "ApproximateNumberOfMessagesVisible"
  namespace           = "AWS/SQS"
  period              = var.approximate_number_messages_visible_period
  statistic           = "Average"
  alarm_description   = "Alarm is above of threshold: ${var.approximate_number_messages_visible_threshold}. Looks like Queue Consumer is too slow to process messages"
  treat_missing_data  = "breaching"
  alarm_actions       = var.actions
  tags                = var.tags

  dimensions = {
    QueueName = data.aws_sqs_queue.sqs.name
  }
}



resource "aws_cloudwatch_metric_alarm" "ApproximateAgeOfOldestMessage" {
  alarm_name          = "${var.alarm_prefix}: Approximate Age Of Oldest Message is high"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.approximate_age_of_oldest_message_periods
  threshold           = var.approximate_age_of_oldest_message_threshold
  metric_name         = "ApproximateAgeOfOldestMessage"
  namespace           = "AWS/SQS"
  period              = var.approximate_age_of_oldest_message_period
  statistic           = "Maximum"
  alarm_description   = "Alarm is above of threshold: ${var.approximate_age_of_oldest_message_threshold}. Looks like Queue Consumer is too slow to process messages"
  treat_missing_data  = "breaching"
  alarm_actions       = var.actions
  tags                = var.tags

  dimensions = {
    QueueName = data.aws_sqs_queue.sqs.name
  }
}