resource "aws_rds_cluster" "Demo" {
  cluster_identifier          = "demotf"
  database_name               = "demodb"
  manage_master_user_password = true
  master_username             = "Punith_root"
}