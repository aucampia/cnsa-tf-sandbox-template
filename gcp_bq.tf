resource "google_bigquery_dataset" "example" {
  dataset_id = "example"
  location   = local.bigquery_location
}

resource "google_bigquery_table" "example" {
  dataset_id = google_bigquery_dataset.example.dataset_id
  table_id   = "example"

  time_partitioning {
    field = "publish_time"
    type  = "DAY"
  }

  deletion_protection = false

  schema = file("spec/bigquery/pubsub_bigquery_schemaless.json")
}
