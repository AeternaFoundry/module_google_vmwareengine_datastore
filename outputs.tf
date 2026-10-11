output "vmwareengine_datastores_id" {
  description = "Map of id values across all vmwareengine_datastores, keyed the same as var.vmwareengine_datastores except keys with no id are omitted"
  value       = { for k, v in google_vmwareengine_datastore.vmwareengine_datastores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vmwareengine_datastores_clusters" {
  description = "Map of clusters values across all vmwareengine_datastores, keyed the same as var.vmwareengine_datastores except keys with no clusters are omitted"
  value       = { for k, v in google_vmwareengine_datastore.vmwareengine_datastores : k => v.clusters if v.clusters != null && length(v.clusters) > 0 }
}
output "vmwareengine_datastores_create_time" {
  description = "Map of create_time values across all vmwareengine_datastores, keyed the same as var.vmwareengine_datastores except keys with no create_time are omitted"
  value       = { for k, v in google_vmwareengine_datastore.vmwareengine_datastores : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "vmwareengine_datastores_deletion_policy" {
  description = "Map of deletion_policy values across all vmwareengine_datastores, keyed the same as var.vmwareengine_datastores except keys with no deletion_policy are omitted"
  value       = { for k, v in google_vmwareengine_datastore.vmwareengine_datastores : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "vmwareengine_datastores_description" {
  description = "Map of description values across all vmwareengine_datastores, keyed the same as var.vmwareengine_datastores except keys with no description are omitted"
  value       = { for k, v in google_vmwareengine_datastore.vmwareengine_datastores : k => v.description if v.description != null && length(v.description) > 0 }
}
output "vmwareengine_datastores_location" {
  description = "Map of location values across all vmwareengine_datastores, keyed the same as var.vmwareengine_datastores except keys with no location are omitted"
  value       = { for k, v in google_vmwareengine_datastore.vmwareengine_datastores : k => v.location if v.location != null && length(v.location) > 0 }
}
output "vmwareengine_datastores_name" {
  description = "Map of name values across all vmwareengine_datastores, keyed the same as var.vmwareengine_datastores except keys with no name are omitted"
  value       = { for k, v in google_vmwareengine_datastore.vmwareengine_datastores : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vmwareengine_datastores_nfs_datastore" {
  description = "Map of nfs_datastore values across all vmwareengine_datastores, keyed the same as var.vmwareengine_datastores except keys with no nfs_datastore are omitted"
  value       = { for k, v in google_vmwareengine_datastore.vmwareengine_datastores : k => one(v.nfs_datastore) if v.nfs_datastore != null && length(v.nfs_datastore) > 0 }
}
output "vmwareengine_datastores_project" {
  description = "Map of project values across all vmwareengine_datastores, keyed the same as var.vmwareengine_datastores except keys with no project are omitted"
  value       = { for k, v in google_vmwareengine_datastore.vmwareengine_datastores : k => v.project if v.project != null && length(v.project) > 0 }
}
output "vmwareengine_datastores_state" {
  description = "Map of state values across all vmwareengine_datastores, keyed the same as var.vmwareengine_datastores except keys with no state are omitted"
  value       = { for k, v in google_vmwareengine_datastore.vmwareengine_datastores : k => v.state if v.state != null && length(v.state) > 0 }
}
output "vmwareengine_datastores_uid" {
  description = "Map of uid values across all vmwareengine_datastores, keyed the same as var.vmwareengine_datastores except keys with no uid are omitted"
  value       = { for k, v in google_vmwareengine_datastore.vmwareengine_datastores : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "vmwareengine_datastores_update_time" {
  description = "Map of update_time values across all vmwareengine_datastores, keyed the same as var.vmwareengine_datastores except keys with no update_time are omitted"
  value       = { for k, v in google_vmwareengine_datastore.vmwareengine_datastores : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

