# jubilant-octo-guide

A Kubernetes HA, non-stacked ETCD cluster deployment blueprint for the homelab.

# Setup

 - Edit provider.tf and input your variables according to your setup.
 - Edit vars.tf and pick the number of VM's you want for each segment.
 - Edit the individual .tf files and modify according to your needs.
 
 # Usage
 
 On your DevOps/Jump Box install Terraform and run:
 
  - terraform init
  - terraform plan -out k8s-ha
  - terraform apply k8s-ha
 

# Some observations

 - When creating a VM template on PVE, unless it lies on shared storage (in which case you only have to create one template), you will have to create the templates on each individual node prior to running this script. On non-shared storage, it will refuse to copy it over to other hosts.
 
 
