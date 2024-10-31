# instance-template# 🚀 Projeto Terraform 

Projeto para provisionar e gerenciar recursos na AWS usando Terraform, incluindo **instâncias EC2** e **grupos de segurança**.
## 🌟 Funcionalidades

- Provisionamento de **instâncias EC2** com diferentes AMIs e tipos de instância.
- Configuração de **grupos de segurança** para definir regras de entrada e saída.
- Aplicação de **tags** consistentes para todos os recursos, facilitando a organização e o rastreamento.



## ⚙️ Instruções de Configuração

1. **Descomente** as linhas `vpc_id` e `subnet_id`, `role` e `cidr_blocks`
2. Preencha os valos apropriados para associar corretamente os recursos.
3. Crie o bucket especificado no arquivo backend.hcl antes de inicializar o terraform

## 💻 Comandos para Gerenciamento

  ```
  terraform init -backend-config=backend.hcl

terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars" -auto-approve
terraform destroy -var-file="terraform.tfvars" -auto-approve


