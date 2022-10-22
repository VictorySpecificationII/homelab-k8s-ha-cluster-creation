resource "proxmox_vm_qemu" "cluster-linux-jumpbox" {
  count = var.lnxjumpbox
  name = "cluster-linux-jumpbox-0${count.index + 1}"
  target_node = "cpu-2"

  clone = var.template_name

  agent = 1
  os_type = "cloud-init"
  cores = 2
  sockets = 1
  cpu = "host"
  memory = 4096
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"

  disk {
    slot = 0
    size = "10G"
    type = "scsi"
    storage = "local-lvm"
    #storage_type = "zfspool"
    iothread = 1
  }

  network {
    model = "virtio"
    bridge = "vmbr0"
  }
  
  network {
    model = "virtio"
    bridge = "vmbr0"
  }

  lifecycle {
    ignore_changes = [
      network,
    ]
  }

  ipconfig0 = "ip=10.98.69.2${count.index + 1}/8,gw=10.0.0.1"
  ipconfig1 = "ip=10.17.0.16${count.index + 1}/8"
#  sshkeys = <<EOF
#  ${var.ssh_key}
#  EOF
}
