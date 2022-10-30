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
    default = 1
}

variable "etcd" {
    default = 1
}

variable "workers" {
    default = 1 
}

variable "stores" {
    default = 1
}

variable "lbs" {
    default = 1
}

# rename to platformcontroller and modify tf files to match
variable "platformcontroller"{
    default = 1
}

variable "lnxjumpbox" {
    default = 0
}

variable "winjumpbox" {
    default = 0
}
