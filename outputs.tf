############################################
# generate outputs
############################################
output "kube" {
  value = "${module.kube.cluster_config_file_path}"
}
