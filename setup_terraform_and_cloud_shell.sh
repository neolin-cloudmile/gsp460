#!/bin/bash

wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip

unzip terraform_0.11.11_linux_amd64.zip

export PATH="$PATH:$HOME/terraform"
cd /usr/bin
sudo ln -s $HOME/terraform
cd $HOME
source ~/.bashrc

terraform --version

export GOOGLE_PROJECT=$(gcloud config get-value project)

echo $GOOGLE_PROJECT
