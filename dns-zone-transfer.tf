locals {
  dns_zone_transfer = [
    "52.14.213.208",
    "3.140.118.214",
  ]

  dns_zone_transfer_with_mask = [for ip in local.dns_zone_transfer : "${ip}/32"]
}
