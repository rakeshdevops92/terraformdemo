rg_name          = "1-dfb4ab19-playground-sandbox"

vnet_name        = "demo-vnet1"
subnet_name      = "internal"
address_space    = ["10.0.0.0/16"]
address_prefixes = ["10.0.2.0/24"]
nic              = "demo-nic"
vm_name          = "win-machine"
size             = "Standard_F2"
vm_username      = "adminuser"
vm_password      = "P@$$w0rd1234!"
sku              = "2016-Datacenter"
img_version      = "latest"

sql_server       = "rakeshtestsqlserver"
server_version   = "12.0"
sql_login        = "4dm1n157r470r"
sql_pass         = "4-v3ry-53cr37-p455w0rd"
dbname           = "rakeshtestdb"