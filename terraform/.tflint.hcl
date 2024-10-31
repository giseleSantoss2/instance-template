plugin "terraform" {
  enabled = true
  source  = "github.com/terraform-linters/tflint-ruleset-terraform"
  version = "0.7.0"
}

rule "terraform_module_pinned_source" {
  enabled = false
}

rule "terraform_documented_variables" {
  enabled = false
}

rule "terraform_standard_module_structure" {
  enabled = false
}

rule "terraform_unused_declarations" {
  enabled = false
}

rule "terraform_typed_variables" {
  enabled = false
}