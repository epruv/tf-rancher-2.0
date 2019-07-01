output "addresses" {
  value = "${aws_instance.rancher.*.public_ip}"
}

output "rancher_admin_password" {
  value = "${local.rancher_password}"
}

output "rancher_url" {
  value = "${rancher2_bootstrap.admin.url}"
}

output "rancher_token" {
  value     = "${rancher2_bootstrap.admin.token}"
  sensitive = true
}
