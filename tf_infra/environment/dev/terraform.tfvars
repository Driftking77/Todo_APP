rg = {
  rg1 = {
    rg_name  = "todoapp-rg-cenindia1"
    location = "CentralIndia"
  }
}

aks = {
  aks1 = {
    aks_name   = "todoappaks"
    rg_name    = "todoapp-rg-cenindia1"
    location   = "CentralIndia"
    dns_prefix = "aks1-dns"
    node_name  = "workernode"
    node_count = "2"
    vm_size    = "Standard_D2_v2"

  }
}

acr = {
  acr1 = {
    acr_name = "todoappacr11"
    rg_name  = "todoapp-rg-cenindia1"
    location = "CentralIndia"
    sku      = "Standard"
    aks_name = "todoappaks"

  }
}

servers_dbs = {
  "todoappdatabase" = {
    rg_name                        = "todoapp-rg-cenindia1"
    location                       = "CentralIndia"
    version                        = "12.0"
    administrator_login            = "devopsadmin"
    administrator_login_password   = "P@ssw01rd@123"
    allow_access_to_azure_services = true
    dbs                            = ["todoappdb"]
  }
}
