#### Création du LoadBalancer et de la backendpool contenant nos VM's
 resource "azurerm_lb" "test" {
   name                = "LoadBalancer"
   location            = data.azurerm_resource_group.nekk_Brief12_terraform
   resource_group_name = data.azurerm_resource_group.nekk_Brief12_terraform

   frontend_ip_configuration {
     name                 = "publicIPAddress"
     public_ip_address_id = azurerm_public_ip.test.id
   }
 }

 resource "azurerm_lb_backend_address_pool" "test" {
   loadbalancer_id     = azurerm_lb.test.id
   name                = "BackEndAddressPool"
 }