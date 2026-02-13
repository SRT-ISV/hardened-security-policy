# resource "google_project_organization_policy" "require_cloud_run_auth" {
#   project    = var.project_id
#   constraint = "constraints/run.managed.requireInvokerIam"

#   boolean_policy {
#     enforced = true
#   }
# }



resource "google_org_policy_policy" "require_cloud_run_auth" {
  # The name field for V2 must follow this exact pattern:
  name   = "projects/${var.project_id}/policies/${var.constraint_id}"
  parent = "projects/${var.project_id}"

  spec {
    rules {
      enforce = "TRUE"
    }
  }
}