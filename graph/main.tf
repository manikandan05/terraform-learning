resource "random_pet" "pet" {
  prefix = "cute"
  length = 2
}

output "pet_name" {
  value = random_pet.pet.id
}

resource "local_file" "pets" {
  filename = "${path.module}/graph.txt"
  /* sharing the existing the resource value like random_pet */
  content  = random_pet.pet.id

  depends_on = [random_pet.pet]
}

/* generate the graph first install the dependecy from this page after execute this command `terraform graph | dot -Tsvg  > graph.svg` */
