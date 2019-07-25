# terraform-sqs-alarms
Terraform module to automate creating sqs alarms

## Example usage
```terraform
module "lambda-alarms" {
  source       = "github.com/TourRadar/terraform-sqs-alarms"
  sqs_name     = aws_sqs_queue.main.name
  actions      = ["snsarn etc"]
  alarm_prefix = "MyAlarmPrefix"
  tags = {
    Project = "SomeProject"
  }
}
```
