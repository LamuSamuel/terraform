resource "providername_resource" "friendlyname_one"{
    attributekeyone ="" 
    attributetwo = ""
}

resource "provide_reosurceone" "friendlyname_two"{
    attributekeyone=var.attributekeyone  
    attributekeytwo=var.attributekeytwo

}

resource "provide_reosurcetwo" "friendlyname_two" {
    prefix = var.prefix[0]

  lifecycle {
    create_before_destroy = true // after the new one is cretaded then the old one is destroyed 
  }
}

resource "provide_reosurcefour" "riendlyname_four" {
    content = "The below is the total content ${provider_resourcethree.friendlyname_three.id}"
    depends_on = [ provide_reosurcethree.friendlyname_three ]

     lifecycle {
        prevent_destroy = true //wont delete the existing one when updating (more secure way  ), however terraform destroy will delete if passed 
     }
  
}

resource "provide_reosurcethree" "friendlyname_three" {
    filecontent = var.filecontent["word1"]
    tags ={
        Name = "provide_reosurcefive"
    }
    lifecycle {
      ignore_changes = [ tags ]   // it will ignorechanges what ever passed in list
    }
}
   
resource "provide_reosurcethree" "friendlyname_three" {
    filename = each.value
    for_each = var.filename
    # foreach = toset(var.filename) converting the value from list to set if explicitly not declared in variables 
}


resource "instance" "example" {
  count         = var.instance_count
    keyone           = "valueone"  
    keytwo = "valuetwo"

  tags = {
    Name = "ExampleInstance-${count.index}"
  }
}