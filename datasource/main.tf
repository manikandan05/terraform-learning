resource "local_file" "pet" {
  filename = "${path.module}/data.txt"
  content  = "This content is reterived from datasource.txt file and its content is \n${data.local_file.datasource_file.content}"
}

data "local_file" "datasource_file" {
  filename = "${path.module}/datasource.txt"
}