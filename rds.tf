terraform {
     backend "remote" {
        organizations = "suresh1993"
        aws_access = "AKIASKQESGO24HU23R7K"
        aws_secret = "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"

        workspaces {
           name = "suresh199"
             
      required_providers {
                        aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
}
}
}
}

provider "aws" {
  version = "~> 3.0"
  region  = "us-east-1"
  }

resource "aws_db_parameter_group" "custom" {
  name   = "customparametergroup"
  family = "mariadb10.4"

  parameter {
    name  = "character_set_server"
    value = "utf8"
  }

  parameter {
    name  = "character_set_client"
    value = "utf8"
  }
}

resource "aws_db_option_group" "example" {
  name                     = "customoptgroup"
  option_group_description = "Terraform Option Group"
  engine_name              = "mariadb"
  major_engine_version     = "10.4"

  
  option {
    option_name = "MARIADB_AUDIT_PLUGIN"
     }
   }
  
resource "aws_db_instance" "default" {
  allocated_storage    = 20
  apply_immediately = true
  allow_major_version_upgrade = true
  storage_type         = "gp2"
  engine               = "mariadb"
  engine_version       = "10.4.13"
  instance_class       = "db.t2.micro"
  name                 = "mydbb"
  username             = "root"
  password             = "adminbest"
  maintenance_window              = "Mon:00:00-Mon:03:00"
  backup_window                   = "03:00-06:00"
  parameter_group_name = "${aws_db_parameter_group.custom.name}"
  option_group_name    = "${aws_db_option_group.example.name}"
  multi_az             = true
backup_retention_period = 7
  skip_final_snapshot  = true
}

resource "aws_db_instance" "replica" {
  allocated_storage    = 20
  apply_immediately = true
  allow_major_version_upgrade = true
  storage_type         = "gp2"
  engine               = "mariadb"
  engine_version       = "10.4.13"
  instance_class       = "db.t2.micro"
  username             = null
  password             = null
maintenance_window              = "Tue:00:00-Tue:03:00"
  backup_window                   = "03:00-06:00"
  parameter_group_name = "${aws_db_parameter_group.custom.name}"
  option_group_name    = "${aws_db_option_group.example.name}"
  multi_az             = true
  replicate_source_db  =  "${aws_db_instance.default.identifier}"
  backup_retention_period = 7
  skip_final_snapshot  = true
}


