############################################
# generate outputs
############################################
output "kube" {
  value = "${module.kube.cluster_config_file_path}"
}
#output "apiconnect" {
#  value = "${module.apiconnect.access_urls}"
#}
#output "sso" {
#  value = "${module.sso.access_urls}"
#}
#output "availability" {
#  value = "${module.availability.access_urls}"
#}
output "monitoring" {
  value = "${module.monitoring.access_urls}"
}
#output "cos" {
#  value = "${module.cos.access_urls}"
#}
#output "mongodb" {
#  value = "${module.mongodb.access_urls}"
#}
#output "elasticsearch" {
#  value = "${module.elasticsearch.access_urls}"
#}
#output "redis" {
#  value = "${module.redis.access_urls}"
#}
#output "messagehub" {
#  value = "${module.messagehub.access_urls}"
#}
