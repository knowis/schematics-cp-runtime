

variable "ibm_bmx_api_key" {
  description                 = "Your IBM Cloud API key. You can get the value by running bx iam api-key-create <key name>."
}

variable "docker_pull_secret" {
  description                 = "Your IBM Docker registry pull secret."
}

variable "org" {
  description                 = "Your IBM Cloud org name."
}
variable "space" {
  default                     = "dev"
  description                 = "Your IBM Cloud space name."
}
variable "num_workers" {
    default                   = "4"
}

variable "cluster_name" {
  default                     = "kubecluster"
  description                 = "The base name for the cluster."
}

variable "region" {
  default                     = "eu-de"
  description                 = "The IBM Cloud region where you want to deploy your cluster, You can get the list with by running bluemix regions."
}

variable "datacenter" {
  default                     = "fra02"
  description                 = "The data center for the cluster, You can get the list with by running bluemix cs locations."
}

variable "machine_type" {
  default                     = "free"
  description                 = "The CPU cores, memory, network, and speed. You can get a list for a given location by running bluemix cs machine-types <location>."
}

variable "isolation" {
  default                     = "public"
}

variable "private_vlan_id" {
  description                 = "The private VLAN for your account. You can run bx cs vlans <location>."
}

variable "public_vlan_id" {
  description                 = "The public VLAN for your account. You can run bx cs vlans <location>."
}

variable "subnet_id" {
  description                 = "The portable subnet to use for cluster. You can view a list of available subnets by running bx cs subnets."
}
