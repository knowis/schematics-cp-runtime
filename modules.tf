
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


############################################
# Deploy pod
############################################
provider "kubernetes" {
  config_path = "${module.kube.cluster_config_file_path}"
}

resource "kubernetes_pod" "domain-server-pod-test" {
  metadata {
    name = "domain-server-pod"
  }

  spec {
    image_pull_secrets {
      name = "${var.docker_pull_secret}"
    }
    container {
      image = "registry.eu-de.bluemix.net/cp_runtime/domain-server:latest"
      name  = "domain-server-docker"
      port = {
        container_port = "80"
        host_port = "8080"
      }
    }
  }
}
