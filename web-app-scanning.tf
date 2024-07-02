locals {
  web_app_scanning = [
    "34.140.183.146",
    "35.241.176.167",
    "34.77.66.77",
    "34.140.250.140",
    "34.22.187.249",
  ]

  web_app_scanning_with_mask = [for ip in local.web_app_scanning : "${ip}/32"]
}
