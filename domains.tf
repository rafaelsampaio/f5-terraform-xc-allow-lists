locals {
  domains_http = [
    "*.ves.volterra.io",
    "downloads.volterra.io",
    "*.blob.core.windows.net",
    "volterra.azurecr.io",
    "vesio.azureedge.net",
    "*.azure.com",
    "*.microsoftonline.com",
    "*.amazonaws.com",
    "docker.io",
    "docker.com",
    "*.gcr.io",
    "gcr.io",
    "storage.googleapis.com",
    "update.release.core-os.net",
    "quay.io",
    "api.bcti.brightcloud.com",
  ]

  domains_dns = [
    "traffic-router-0.cdn-gc.ves.volterr",
    "traffic-router-1.cdn-gc.ves.volterr",
    "cdn.ves.volterra.io",
  ]

}
