# POC Hashicorp Terraform for DigitalOcean

## What is it ?
Just a basic dummy POC for a Terraform usage when creating a Linux Droplet* on [Digital Ocean](https://www.digitalocean.com/).

A Debian droplet will be created, then Nginx installed on it.

All should be quite understandable.

If you feel anything is missing, think about consult the Digital Ocean docs and tutorials.

Digital Ocean comes with various, very well documented, guidelines and tutorials.

*Droplets are Linux-based virtual machines (VMs) that run on top of virtualized hardware (Digital Ocean terminology).

## Requirements
Have a Digital Ocean account.

Notice the $200 credit to try out their products over 60 days [Digital Ocean Signin](https://cloud.digitalocean.com/registrations/new?refcode=f6fcd01aaffb)

## Useful Links:
[What is Terraform](https://developer.hashicorp.com/terraform/intro)

[DigitalOcean How To Use Terraform with DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean)

[DigitalOcean regions](https://slugs.do-api.dev/)

[DigitalOcean droplets models](https://slugs.do-api.dev/)

[DigitalOcean custom images quickstart](https://docs.digitalocean.com/products/images/custom-images/quickstart/)

## How use this ?
`git clone https://github.com/memphis-tools/poc_terraform_for_digitalocean.git`

`cd poc_terraform_for_digitalocean`

Anything describe below is just a copy /paste from the above links.

Notice we deploy a Debian distribution. Faster than a Rocky one.

Export your Digital Ocean's Personal Access Token (PAT). See [How create a Personal Access Token on Digital Ocean](https://docs.digitalocean.com/reference/api/create-personal-access-token/).

`export DO_PAT="Your_digitialocean_personal_access_token"`

Run the following command to initialize Terraform for your project.

`terraform init`

Run the following command to create a Terraform's plan.

`terraform plan -var "do_token=${DO_PAT}" -var "pvt_key=Your_local_private_ssh_key_path"`

Run the following command to execute the Terraform's plan.

`terraform apply -var "do_token=${DO_PAT}" -var "pvt_key=Your_local_private_ssh_key_path"`

`Enter a value: yes`

Run the following command to destroy the Terraform's plan set (destroy the droplet).

`terraform destroy -var "do_token=${DO_PAT}" -var "pvt_key=Your_local_private_ssh_key_path"`

`Enter a value: yes`
