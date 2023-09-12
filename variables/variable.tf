/* string type */
variable "name" {
  type        = string
  description = "defines the student name"
  default     = "Alex"
}

/* number type */
variable "age" {
  type        = number
  description = "define the student age"
  default     = 28
}

/* bool type */
variable "isHighSchool" {
  type        = bool
  description = "define the student is high graded"
  default     = true
}

/* list type */
variable "subjectGrades" {
  type        = list(string)
  description = "define the student subject mark grades"
  default     = ["A", "B", "A", "C", "B"]
}

/* tuple type */
variable "consolidate" {
  type        = tuple([string, number, bool])
  description = "define the tuple use case"
  default     = ["Alex", 28, true]
}

/* set type */
variable "uniqueEntry" {
  type = set(string)
  default = [
    "foo",
    "bar",
  ]
}

/* object type */
variable "objectType" {
  type = object({
    name         = string,
    age          = number,
    isHighSchool = bool,
  })
  default = {
    name         = "Alex",
    age          = 28,
    isHighSchool = true,
  }
}

