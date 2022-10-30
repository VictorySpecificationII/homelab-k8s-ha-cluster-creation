# homelab-k8s-ha-cluster-creation

A Kubernetes HA, non-stacked ETCD cluster deployment blueprint for the homelab. Developed for Proxmox VE.

# Setup

 - Edit provider.tf and input your variables according to your setup.
 - Edit vars.tf and pick the number of VM's you want for each segment.
 - Edit the individual .tf files and modify according to your needs.
 
 # Usage
 
 On your DevOps box install Terraform and run:
```
 terraform init
```

Then, save your plan using a name - here I use k8s-ha but really it could be any name you want.
```
terraform plan -out k8s-ha
```

Last step is to run
```
terraform apply k8s-ha
``` 
and go make yourself a cup of tea  until it's ready.

# Some observations

 - When creating a VM template on PVE, unless it lies on shared storage (in which case you only have to create one template), you will have to create the templates on each individual node prior to running this script. On non-shared storage, it will refuse to copy it over to other hosts.
 
 
