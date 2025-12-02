output "container_registries" {
  description = ""
  value       = local.container_registries
}

output "dns_zone_transfer_with_mask" {
  description = ""
  value       = local.dns_zone_transfer_with_mask
}

output "dns_zone_transfer" {
  description = ""
  value       = local.dns_zone_transfer
}

output "dnslb_health_check" {
  description = ""
  value       = local.dnslb_health_check
}

output "dnslb_health_check_with_mask" {
  description = ""
  value       = local.dnslb_health_check_with_mask
}

output "domains_http" {
  description = ""
  value       = local.domains_http
}

output "domains_dns" {
  description = ""
  value       = local.domains_dns
}

output "domains" {
  description = ""
  value       = concat(local.domains_http, local.domains_dns, local.domains_bd, localc.domains_smsv2)
}

output "global_log_receivers" {
  description = ""
  value       = local.global_log_receivers
}

output "range_ipv4_tcp" {
  description = ""
  value       = local.range_ipv4_tcp
}

output "range_ipv4_tcp_ports" {
  description = ""
  value       = local.range_ipv4_tcp_ports
}

output "range_ipv4_udp" {
  description = ""
  value       = local.range_ipv4_udp
}

output "range_ipv4_udp_ports" {
  description = ""
  value       = local.range_ipv4_udp_ports
}

output "all_ranges" {
  description = "All IP ranges with mask"
  value       = distinct(concat(local.web_app_scanning_with_mask, local.dnslb_health_check_with_mask, local.global_log_receivers, local.range_ipv4_tcp, local.range_ipv4_udp))
}

output "all_ports" {
  description = "All TCP and UDP ports"
  value       = distinct(concat(local.range_ipv4_tcp_ports, local.range_ipv4_udp_ports))
}
