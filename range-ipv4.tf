locals {
  range_ipv4_tcp_americas = [
    "5.182.215.0/25",
    "84.54.61.0/25",
    "23.158.32.0/25",
    "84.54.62.0/25",
    "185.94.142.0/25",
    "185.94.143.0/25",
    "159.60.190.0/24",
    "159.60.168.0/24",
    "159.60.180.0/24",
    "159.60.174.0/24",
    "159.60.176.0/24",
  ]

  range_ipv4_tcp_americas_ports = [
    "80",
    "443",
  ]

  range_ipv4_tcp_europe = [
    "5.182.213.0/25",
    "5.182.212.0/25",
    "5.182.213.128/25",
    "5.182.214.0/25",
    "84.54.60.0/25",
    "185.56.154.0/25",
    "159.60.160.0/24",
    "159.60.162.0/24",
    "159.60.188.0/24",
    "159.60.182.0/24",
    "159.60.178.0/24",
  ]

  range_ipv4_tcp_europe_ports = [
    "80",
    "443",
  ]

  range_ipv4_tcp_asia = [
    "103.135.56.0/25",
    "103.135.57.0/25",
    "103.135.56.128/25",
    "103.135.59.0/25",
    "103.135.58.128/25",
    "103.135.58.0/25",
    "159.60.189.0/24",
    "159.60.166.0/24",
    "159.60.164.0/24",
    "159.60.170.0/24",
    "159.60.172.0/24",
    "159.60.191.0/24",
  ]

  range_ipv4_tcp_asia_ports = [
    "80",
    "443",
  ]

  range_ipv4_udp_americas = [
    "5.182.215.0/25",
    "84.54.61.0/25",
    "23.158.32.0/25",
    "84.54.62.0/25",
    "185.94.142.0/25",
    "185.94.143.0/25",
    "159.60.190.0/24",
    "159.60.168.0/24",
    "159.60.180.0/24",
    "159.60.174.0/24",
    "159.60.176.0/24",
  ]

  range_ipv4_udp_americas_ports = [
    "4500",
  ]

  range_ipv4_udp_europe = [
    "5.182.213.0/25",
    "5.182.212.0/25",
    "5.182.213.128/25",
    "5.182.214.0/25",
    "84.54.60.0/25",
    "185.56.154.0/25",
    "159.60.160.0/24",
    "159.60.162.0/24",
    "159.60.188.0/24",
    "159.60.182.0/24",
    "159.60.178.0/24",
  ]

  range_ipv4_udp_europe_ports = [
    "4500",
  ]

  range_ipv4_udp_asia = [
    "103.135.56.0/25",
    "103.135.57.0/25",
    "103.135.56.128/25",
    "103.135.59.0/25",
    "103.135.58.128/25",
    "103.135.58.0/25",
    "159.60.189.0/24",
    "159.60.166.0/24",
    "159.60.164.0/24",
    "159.60.170.0/24",
    "159.60.172.0/24",
    "159.60.191.0/24",
  ]

  range_ipv4_udp_asia_ports = [
    "4500",
  ]

  range_ipv4_tcp       = distinct(concat(local.range_ipv4_tcp_americas, local.range_ipv4_tcp_europe, local.range_ipv4_tcp_asia))
  range_ipv4_tcp_ports = distinct(concat(local.range_ipv4_tcp_americas_ports, local.range_ipv4_tcp_europe_ports, local.range_ipv4_tcp_asia_ports))
  range_ipv4_udp       = distinct(concat(local.range_ipv4_udp_americas, local.range_ipv4_udp_europe, local.range_ipv4_udp_asia))
  range_ipv4_udp_ports = distinct(concat(local.range_ipv4_udp_americas_ports, local.range_ipv4_udp_europe_ports, local.range_ipv4_udp_asia_ports))

}
