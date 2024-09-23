variable "attributekeyone" {
    default = ""
    type = string
    description = "a small description"
  
}

variable "attributekeytwo"{
    default = attributvaluetwo
    type = ""
    description = "a small description"
}
variable "prefix"{
     default = ["mr","mrs","sir"]
     type = list
}
variable "filecontent"{
     default = {
        "word1" ="How are you"
        "word2" ="have a great day"
     }
     type = map
}  

variable "filename"{
    type = set(string)
    default = [ "value1","value2","value3" ]

}  

variable "instance_count" {
  default = 3
}