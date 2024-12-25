module "rg" {
  source = "../../modules/azurerm_resource_group"
  rg     = var.rg
}

module "aks" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_aks"
  aks        = var.aks

}

module "acr" {
  depends_on = [module.aks]
  source     = "../../modules/azurerm_acr"
  acr        = var.acr
}

module "dbsql" {
  depends_on  = [module.rg]
  source      = "../../modules/azurerm_sqldb"
  servers_dbs = var.servers_dbs
}