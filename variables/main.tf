resource "local_file" "first_resource" {
  filename = "${path.module}/primitive_types.txt"
  content  = "Created Time : ${formatdate("MMM DD, YYYY", "2023-09-12T23:12:01Z")}\nStudent Name is ${var.name} and age is ${var.age}. He is graded in high school as ${var.isHighSchool}. \nThe last exam subject grades are \nSub 1 : ${var.subjectGrades[0]} \nSub 2 : ${var.subjectGrades[1]} \nSub 3 : ${var.subjectGrades[2]} \nSub 4 : ${var.subjectGrades[3]} \nSub 5 : ${var.subjectGrades[4]} \n"
}

resource "local_file" "third_resource" {
  filename = "${path.module}/complex_tuple_types.txt"
  content  = "Created Time : ${formatdate("MMM DD, YYYY", "2023-09-12T23:12:01Z")}\nStudent name is ${var.consolidate[0]} and age is ${var.consolidate[1]}. He is graded in high school as ${var.consolidate[2]}."
}

resource "local_file" "second_resource" {
  filename = "${path.module}/complex_obj_types.txt"
  content  = "Created Time : ${formatdate("MMM DD, YYYY", "2023-09-12T23:12:01Z")}\nStudent name is ${var.objectType.name} and age is ${var.objectType.age}. He is graded in high school as ${var.objectType.isHighSchool}."
}


