############################################
# generate outputs
############################################
output "kube" {
  value = "${module.kube.cluster_config_file_path}"
}
output "monitoring" {
  value = "${module.monitoring.access_urls}"
}
