variable "ssh_key" {
  default = ""
}
variable "proxmox_host" {
    default = "10.60.0.3"
}

variable "template_name" {
    default = "cloudinit-ubuntu-2204"
}

variable "masters" {
    default = 0
}

variable "etcd" {
    default = 0
}

variable "workers" {
    default = 0 
}

variable "stores" {
    default = 0
}

variable "lbs" {
    default = 0
}
