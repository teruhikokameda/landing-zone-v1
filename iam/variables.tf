variable "tenancy_ocid" {
  type        = string
  description = "The OCID of tenancy"
}

# -----------------------------------------------------------------------------
# Identity Compartment Variables
# -----------------------------------------------------------------------------
variable "parent_compartment_id" {
  type        = string
  description = "The OCID of the top level / parent compartment"
}

variable "network_compartment_id" {
  type        = string
  description = "The OCID of the network compartment"
}

variable "network_compartment_name" {
  type        = string
  description = "The name for the network compartment"
}

variable "workload_compartment_name_list" {
  type        = list(string)
  description = "List of application workload compartment names"
}

# -----------------------------------------------------------------------------
# IAM Group Variables
# -----------------------------------------------------------------------------
variable "administrator_group_name" {
  type    = string
  default = "Administrators"
}

variable "network_admin_group_name" {
  type    = string
  default = "Virtual-Network-Admins"
}

variable "lb_users_group_name" {
  type    = string
  default = "LBUsers"
}

# -----------------------------------------------------------------------------
# IAM Policy Variables
# -----------------------------------------------------------------------------
variable "administrator_policy_name" {
  type    = string
  default = "OCI-LZ-Admin-TenantAdminPolicy"
}

variable "network_admin_policy_name" {
  type    = string
  default = "OCI-LZ-VCNAdminPolicy"
}

# -----------------------------------------------------------------------------
# Break Glass User Variable
# -----------------------------------------------------------------------------
variable "break_glass_username_list" {
  type = list(string)
  description = "The list break glass admin users"
}
