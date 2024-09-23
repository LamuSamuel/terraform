output resourcename {
    value = provide_reosurcethree.friendlyname_three.id
    description = "value "

}

output "instance_ids" {
  value = instance.example[*].id
}
