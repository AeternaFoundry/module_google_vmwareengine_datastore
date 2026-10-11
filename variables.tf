variable "vmwareengine_datastores" {
  description = <<EOT
Map of vmwareengine_datastores, attributes below
Required:
    - location
    - name
    - nfs_datastore (block):
        - google_file_service (optional, block):
            - filestore_instance (optional)
            - netapp_volume (optional)
        - third_party_file_service (optional, block):
            - file_share (required)
            - network (required)
            - servers (required)
Optional:
    - deletion_policy
    - description
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location        = string
    name            = string
    deletion_policy = optional(string)
    description     = optional(string)
    project         = optional(string)
    nfs_datastore = object({
      google_file_service = optional(object({
        filestore_instance = optional(string)
        netapp_volume      = optional(string)
      }))
      third_party_file_service = optional(object({
        file_share = string
        network    = string
        servers    = list(string)
      }))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

