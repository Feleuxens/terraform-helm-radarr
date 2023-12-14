variable "domain" {
  type = string
}

variable "cpu_request" {
  type    = string
  default = "10m"
}

variable "memory_request" {
  type    = string
  default = "256Mi"
}

variable "memory_limit" {
  type    = string
  default = "512Mi"
}

variable "volume_size" {
  type        = string
  default     = "10Gi"
  description = "Size of the PVC"
}

variable "timezone" {
  type        = string
  default     = "Europe/Berlin"
  description = "Timezone setting for Radarr"
}

variable "puid" {
  type        = number
  default     = 1000
  description = "PUID used inside the container for ownership of the files"
}

variable "guid" {
  type        = number
  default     = 1000
  description = "GUID used inside the container for ownership of the files"
}