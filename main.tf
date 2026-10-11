resource "google_vmwareengine_datastore" "vmwareengine_datastores" {
  for_each = var.vmwareengine_datastores

  location        = each.value.location
  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  project         = each.value.project

  nfs_datastore {
    dynamic "google_file_service" {
      for_each = each.value.nfs_datastore.google_file_service != null ? [each.value.nfs_datastore.google_file_service] : []
      content {
        filestore_instance = google_file_service.value.filestore_instance
        netapp_volume      = google_file_service.value.netapp_volume
      }
    }
    dynamic "third_party_file_service" {
      for_each = each.value.nfs_datastore.third_party_file_service != null ? [each.value.nfs_datastore.third_party_file_service] : []
      content {
        file_share = third_party_file_service.value.file_share
        network    = third_party_file_service.value.network
        servers    = third_party_file_service.value.servers
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

