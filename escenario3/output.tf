# Todas las IP son estáticas: están en los ficheros cloud-init/network-config-*.yaml
output "e3-balanceador" {
  value = {
    nombre = "e3-balanceador"
    ip1    = "192.168.10.10" # red externa
    ip2    = "192.168.100.1" # red de datos
  }
}

output "e3-apache1" {
  value = {
    nombre = "e3-apache1"
    ip1    = "192.168.10.11"   # red externa
    ip2    = "192.168.100.100" # red de datos
  }
}

output "e3-apache2" {
  value = {
    nombre = "e3-apache2"
    ip1    = "192.168.10.12"   # red externa
    ip2    = "192.168.100.101" # red de datos
  }
}
