# f5-terraform-xc-allow-lists

This is a module to make it easier to create allow lists for F5 Distributed Cloud IPs and domains.

---

## References

- [Firewall or Proxy Reference for Network Cloud](https://docs.cloud.f5.com/docs/reference/network-cloud-ref)
- [Flat file for automation purposes](https://docs.cloud.f5.com/docs/93c585ade9c22ae0060822d112a934fc/ips-domains.txt)

---

## Usage Example

```hcl
module "xc_allow_lists" {
  source = "github.com/rafaelsampaio/f5-terraform-xc-allow-lists"
}

resource "azurerm_network_security_group" "xc" {
  name                = "allow-xc"
  location            = var.location
  resource_group_name = var.rg
  tags                = var.labels

  dynamic "security_rule" {
    for_each = { for port in var.ports : port => port }
    content {
      name                       = "xc-tcp-${security_rule.value}"
      priority                   = security_rule.key + 101
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      destination_port_range     = security_rule.value
      source_address_prefixes    = module.xc_allow_lists.all_ranges
      source_port_range          = "*"
      destination_address_prefix = data.azurerm_subnet.external.address_prefixes[0]
    }
  }
}



```

---

## Inputs

None

## Outputs

| Name                         | Description                                                                                                         |
| ---------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| range_ipv4_tcp               | Configure your network firewall to allow connections from or to the IP address ranges specified                     |
| range_ipv4_tcp_ports         | Configure your network firewall to allow connections from or to the IP address ranges specified                     |
| range_ipv4_udp               | Configure your network firewall to allow connections from or to the IP address ranges specified                     |
| range_ipv4_udp_ports         | Configure your network firewall to allow connections from or to the IP address ranges specified                     |
| dns_zone_transfer            | Allow the IP address ranges specified for successful zone transfers                                                 |
| dns_zone_transfer_with_mask  | Allow the IP address ranges specified for successful zone transfers                                                 |
| global_log_receivers         | Allow the following IP ranges for successful functioning of the global log receiver                                 |
| dnslb_health_check           |                                                                                                                     |
| dnslb_health_check_with_mask |                                                                                                                     |
| container_registries         | Allow the IP address ranges specified to enable access to the various container registries                          |
| domains_http                 | Add the domains specified to your allowlist to enable firewall or proxy to allow connections from or to the domains |
| domains_dns                  | Add the domains specified to your allowlist to enable firewall or proxy to allow connections from or to the domains |
| all_ranges                   | All but container registries                                                                                        |
| all_ports                    | All TCP and UDP ports                                                                                               |
