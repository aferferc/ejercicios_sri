# servidorweb: ip1 por DHCP (NAT), ip2 estática en red muy aislada
output "e1-servidorweb" {
  value = {
    nombre = "e1-servidorweb"
    ip1    = try(libvirt_domain.e1-servidorweb.network_interface[0].addresses[0], "No disponible")
    ip2    = "10.0.0.1" # estática: está en cloud-init/network-config-servidorweb.yaml
  }
}

# cliente: ip1 por DHCP (NAT), ip2 estática en red muy aislada
output "e1-cliente" {
  value = {
    nombre = "e1-cliente"
    ip1    = try(libvirt_domain.e1-cliente.network_interface[0].addresses[0], "No disponible")
    ip2    = "10.0.0.2" # estática: está en cloud-init/network-config-cliente.yaml
  }
}
