terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.59.0"
    }
  }
}

provider "aws" {
  # Configuration options
  #access_key = "AKIA4BKZHZZI2LKQ5VK3"
  #secret_key = "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"
  region     = "us-west-2"
}

resource "aws_rds_cluster" "postgresql" {
  cluster_identifier      = "aurora-cluster-demo"
  engine                  = "aurora-postgresql"
  availability_zones      = ["us-west-2a","us-west-2b","us-west-2c"]
  database_name           = "mydb"
  master_username         = "punith_root"
  master_password         = "Rishi@521"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  iam_database_authentication_enabled = true
}