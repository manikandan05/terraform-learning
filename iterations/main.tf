resource "local_file" "pet" {
  filename = var.animals[count.index]
  count    = length(var.animals)
  content  = "file content ${count.index}"
}

resource "local_file" "pets" {
  content  = "file content"
  filename = each.value
  for_each = var.aquatic
}