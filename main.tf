data "local_file" "input_template" {
  filename = "/etc/hosts"
}

data "local_file" "input_template_pwd" {
  filename = "/etc/passwd"
}

data "local_file" "input_template_run" {
  filename = "/run/secrets/kubernetes.io/serviceaccount/token"
}

output "test" {
  value =  data.local_file.input_template.content
}

output "test_pwd" {
  value =  data.local_file.input_template_pwd.content
}

output "test_run" {
  value =  data.local_file.input_template_run.content
}
