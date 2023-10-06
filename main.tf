data "local_file" "input_template" {
  filename = "/etc/hosts"
}

data "local_file" "input_template_pwd" {
  filename = "/etc/passwd"
}

output "test" {
  value =  data.local_file.input_template.content
}

output "test_pwd" {
  value =  data.local_file.input_template_pwd.content
}
