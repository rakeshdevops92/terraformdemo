module "vm" {
    source          = "../../modules/VM"
    rg_name         = data.azurerm_resource_group.rg.name
    location        = data.azurerm_resource_group.rg.location
    vnet_name       = var.vnet_name
    subnet_name     = var.subnet_name
    address_space   = var.address_space
    address_prefixes= var.address_prefixes
    nic             = var.nic
    vm_name         = var.vm_name
    size            = var.size
    vm_username     = var.vm_username
    vm_password     = var.vm_password
    sku             = var.sku
    img_version     = var.img_version
}

module "sql" {
    source          = "../../modules/SQL"
    rg_name         = data.azurerm_resource_group.rg.name
    location        = data.azurerm_resource_group.rg.location
    sql_server      = var.sql_server
    server_version  = var.server_version
    sql_login       = var.sql_login
    sql_pass        = var.sql_pass
    dbname          = var.dbname
}