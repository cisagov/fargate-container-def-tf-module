output "json" {
  value = "[${module.container.json_map_encoded}]"
}

output "json_map" {
  value = module.container.json_map_encoded
}
