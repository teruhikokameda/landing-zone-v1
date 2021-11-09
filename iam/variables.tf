variable "tenancy_ocid" {
  type        = string
  description = "The OCID of tenancy"
}

variable "workload_compartment_ocids" {
  description = "The list of workload compartments"
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
  type        = string
  description = "The name for the administrator group"
  default     = "Administrators"
}

variable "network_admin_group_name" {
  type        = string
  description = "The name for the network administrator group name"
  default     = "Virtual-Network-Admins"
}

variable "lb_users_group_name" {
  type        = string
  description = "The name for the load balancer users group name"
  default     = "LBUsers"
}

variable "workload_storage_admins_group_name" {
  type        = string
  description = "The name for the workload_storage_admins_group_name"
  default     = "Workload-Storage-Admins"
}

variable "workload_admin_group_name" {
  type = string
  default = "Workload-Admins"
}

variable "workload_user_group_name" {
 type = string
 default = "Workload-Users" 
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
