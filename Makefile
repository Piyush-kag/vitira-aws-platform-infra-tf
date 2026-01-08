ENV ?= dev
TF_DIR = .
TFVARS = envs/$(ENV)/terraform.tfvars

.PHONY: init plan apply destroy validate fmt

init:
	terraform init -upgrade

validate:
	terraform validate

fmt:
	terraform fmt -recursive

plan:
	terraform plan -var-file=$(TFVARS)

apply:
	terraform apply -var-file=$(TFVARS)

destroy:
	terraform destroy -var-file=$(TFVARS)
