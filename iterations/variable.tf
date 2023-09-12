variable "animals" {
  type    = list(string)
  default = ["cat.txt", "dog.txt", "horse.txt"]
}

variable "aquatic" {
  type    = set(string)
  default = ["fish.txt", "crab.txt", "dolphin.txt"]
}