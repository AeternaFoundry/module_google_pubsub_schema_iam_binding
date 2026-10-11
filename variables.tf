variable "pubsub_schema_iam_bindings" {
  description = <<EOT
Map of pubsub_schema_iam_bindings, attributes below
Required:
    - members
    - role
    - schema
Optional:
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members = set(string)
    role    = string
    schema  = string
    project = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

