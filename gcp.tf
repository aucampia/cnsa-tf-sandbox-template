data "google_project" "project" {
}

resource "google_project_service" "project_service" {
  for_each = toset([
    "bigquery.googleapis.com",
  ])
  service                    = each.value
  disable_dependent_services = false
}
