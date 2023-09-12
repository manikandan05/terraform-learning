resource "local_file" "lifecycle" {
  filename = "${path.module}/lifecycle.txt"
  content  = "Lifecycle concepts"

  lifecycle {
    create_before_destroy = true
  }
}

resource "random_pet" "pet" {
  prefix = "cute"
  length = 2

  lifecycle {
    ignore_changes = [prefix, length]
    /* ignore_changes = "all"  this will ignore all the parameters */
  }
}

resource "local_file" "destroy" {
  filename = "${path.module}/destroy.txt"
  content  = "we love cat"

  lifecycle {
    prevent_destroy = true
  }
}