output "name" {
  sensitive = true
  value =   "kv${var.name}"
}

output "id" {
  sensitive = true
  value =   azurerm_key_vault.main.id
}