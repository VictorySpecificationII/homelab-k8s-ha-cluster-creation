variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDpIKdY+tz+1vYCF/UjK6CjUspdEz4QC1FKzWcEr9IAPmWaJ8dDvyGr+EWS1m4StEFj3fVpSnFEIfvBVjJOFdwpfigwrqyTSgTR1d8nrvBYdN1lqXB3LKOFJRBvBNI4jqDMYvsplKjCnCRdLnNBK517Lk2jQjXA/kAdXY89lxFUVVtCLGQ6pZttU9ZNu5BnIwr8XtLxSMH+FHrZdmPkDTUF3i5tQZF/vysysXAjAi9sOxzwydTcJ90ApBqiWuiBHgoQAmg59nFNv74eE0PY9aqCtepN2P9gSsI4a/kxKORPGUlK2vE7euh2hHgHDyu2e/E4lowkeCfzxT9K8YSmBpT77V936e3VDByrlDxk1nNHSOhdrJFhkse1wiMnhbIt5Mb1NbY3kRNR1ecjU1Lu4E7Kf991yGFpveX7Bjml0XUZyedzWSZOQ69JHgDb7qBWqlHYzEqwDgrMv8+4DrPqh4tvY3V4aIJoANzWBFGY0dU24ojo77KsAVPFSdUXYV/9pcU= antreas@master-0"
}
variable "proxmox_host" {
    default = "10.60.0.3"
}

variable "template_name" {
    default = "cloudinit-ubuntu-2004"
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
