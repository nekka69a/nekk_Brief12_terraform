###### L'appel de "data" permet de faire appel à une ressource déjà existante, lors de la destruction terraform
###### ne detruit que les ressource qu'il a créé et non le ressources importées, ici un resource group

data "azurerm_resource_group" "nekk_Brief12_terraform" {
    name = "nekk_Brief12_terraform"
  }