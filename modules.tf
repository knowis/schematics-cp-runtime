
############################################
# Create the Kube cluster
############################################
module "kube" {
  source                          = "git@github.com:Cloud-Schematics/container-cluster.git"
  cluster_name                    = "${var.cluster_name}"
  datacenter                      = "${var.datacenter}"
  machine_type                    = "${var.machine_type}"
  public_vlan_id                  = "${var.public_vlan_id}"
  private_vlan_id                 = "${var.private_vlan_id}"
  num_workers                     = "${var.num_workers}"
  bluemix_api_key                 = "${var.ibm_bmx_api_key}"
  subnet_id                       = "${var.subnet_id}"
  org                             = "${var.org}"
  space                           = "${var.space}"
}

############################################
# Create the APIConnect instance
############################################
#module "apiconnect" {
#    source                          = "git@github.com:Cloud-Schematics/cloud-service.git"
#    servicename                     = "APIConnect"
#    plan                            = "Essential"
#    ibm_bmx_api_key                 = "${var.ibm_bmx_api_key}"
#    org                             = "${var.org}"
#    space                           = "${var.space}"
#}

############################################
# Create the SingleSignOn instance
############################################
#module "sso" {
#    source                          = "git@github.com:Cloud-Schematics/cloud-service.git"
#    servicename                     = "SingleSignOn"
#    plan                            = "professional"
#    ibm_bmx_api_key                 = "${var.ibm_bmx_api_key}"
#    org                             = "${var.org}"
#    space                           = "${var.space}"
#}

############################################
# Create the AvailabilityMonitoring instance
############################################
#module "availability" {
#    source                          = "git@github.com:Cloud-Schematics/cloud-service.git"
#    servicename                     = "AvailabilityMonitoring"
#    plan                            = "Paid"
#    ibm_bmx_api_key                 = "${var.ibm_bmx_api_key}"
#    org                             = "${var.org}"
#    space                           = "${var.space}"
#}

############################################
# Create the monitoring instance
############################################
module "monitoring" {
    source                          = "git@github.com:Cloud-Schematics/cloud-service.git"
    servicename                     = "Monitoring"
    plan                            = "lite"
    ibm_bmx_api_key                 = "${var.ibm_bmx_api_key}"
    org                             = "${var.org}"
    space                           = "${var.space}"
}

############################################
# Create the cloud object store instance
############################################
#module "cos" {
#    source                          = "git@github.com:Cloud-Schematics/cloud-service.git"
#    servicename                     = "cloud-object-storage"
#    plan                            = "Premium"
#    ibm_bmx_api_key                 = "${var.ibm_bmx_api_key}"
#    org                             = "${var.org}"
#    space                           = "${var.space}"
#}

############################################
# Create the mongodb instance
############################################
#module "mongodb" {
#    source                          = "git@github.com:Cloud-Schematics/cloud-service.git"
#    servicename                     = "compose-for-mongodb"
#    plan                            = "Standard"
#    ibm_bmx_api_key                 = "${var.ibm_bmx_api_key}"
#    org                             = "${var.org}"
#    space                           = "${var.space}"
#}

############################################
# Create the elasticsearch instance
############################################
#module "elasticsearch" {
#    source                          = "git@github.com:Cloud-Schematics/cloud-service.git"
#    servicename                     = "compose-for-elasticsearch"
#    plan                            = "Standard"
#    ibm_bmx_api_key                 = "${var.ibm_bmx_api_key}"
#    org                             = "${var.org}"
#    space                           = "${var.space}"
#}

############################################
# Create the redis instance
############################################
#module "redis" {
#    source                          = "git@github.com:Cloud-Schematics/cloud-service.git"
#    servicename                     = "compose-for-redis"
#    plan                            = "Standard"
#    ibm_bmx_api_key                 = "${var.ibm_bmx_api_key}"
#    org                             = "${var.org}"
#    space                           = "${var.space}"
#}

############################################
# Create the message hub instance
############################################
#module "messagehub" {
#    source                          = "git@github.com:Cloud-Schematics/cloud-service.git"
#    servicename                     = "messagehub"
#    plan                            = "standard"
#    ibm_bmx_api_key                 = "${var.ibm_bmx_api_key}"
#    org                             = "${var.org}"
#    space                           = "${var.space}"
#}

############################################
# Create the NFS storage
############################################

#provider "kubernetes" {
#  config_path = "${module.kube.cluster_config_file_path}"
#}

#resource "kubernetes_persistent_volume_claim" "pvolume" {
#  metadata {
#    name = "pvolume"
#  }
#  spec {
#    access_modes = ["ReadWriteMany"]
#    resources {
#      requests {
#        storage = "20Gi"
#      }
#    }
#    volume_name = "pvolume"
#    storage_class_name = "ibmc-file-gold"
#  }
#}
