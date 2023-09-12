resource "random_pet" "pet" { 
  prefix = "cute"
  length = 2
}

output "pet_name" {
  value = random_pet.pet.id
}

/* The above resource will delete after execute the destroy command */

/* This phase will not delete even destroy command, it returns error with message content */

resource "local_file" "pets" {
  filename = "${path.module}/pet.txt"
  content = random_pet.pet.id

  lifecycle {
    prevent_destroy = true
  }
}