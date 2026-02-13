variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
  default     = "easysaas-adc-demo"
}


variable "constraint_id" {
  description = "The ID of the Org policy Constraint"
  type        = string
  default     = "run.managed.requireInvokerIam"
}