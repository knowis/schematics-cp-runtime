
############################################
# Create the Kube cluster
############################################
module "kube" {
  source                          = "github.com/Cloud-Schematics/container-cluster"
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
  region                          = "${var.region}"
}
