# proxy: ip1 por DHCP (NAT), ip2 estática en red muy aislada
output "e2-proxy" {
  value = {
    nombre = "e2-proxy"
    ip1    = try(libvirt_domain.e2-proxy.network_interface[0].addresses[0], "No disponible")
    ip2    = "10.0.0.1" # estática: está en cloud-init/network-config-proxy.yaml
  }
}

# backend: ip1 por DHCP (NAT), ip2 estática en red muy aislada
output "e2-backend" {
  value = {
    nombre = "e2-backend"
    ip1    = try(libvirt_domain.e2-backend.network_interface[0].addresses[0], "No disponible")
    ip2    = "10.0.0.2" # estática: está en cloud-init/network-config-backend.yaml
  }
}
