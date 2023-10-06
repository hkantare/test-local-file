data "local_file" "input_template" {
  filename = "/etc/hosts"
}

output "test" {
  value =  data.local_file.input_template.content
}
