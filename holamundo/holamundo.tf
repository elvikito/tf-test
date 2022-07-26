// variables

variable "test" {
    type = string
    default = "Hola mundo"
}

output "test" {
    value = "${var.test}"
}


// maps 
variable "mapexample" {
    type = map
    default = {
        "name" = "elvis"
        "lastname" = "ramirez"
    }
}

output "mapoutput" {
    value = "${var.mapexample["name"]}"
}

// list 
variable "listexample" {
    type = list
    default = ["1", "dos", "tres"]
}

output "listout" {
    value = "${var.listexample[0]}"
}
