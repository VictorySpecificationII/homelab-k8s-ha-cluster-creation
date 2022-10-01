provider "proxmox" {
  pm_api_url = "https://10.60.0.3:8006/api2/json"
  pm_api_token_id = "terraform-prov@pve!tf-vm-provisioner"
  pm_api_token_secret = "42515e18-c534-4a45-876c-e9cd8347165e"
  pm_tls_insecure = true
}
