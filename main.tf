module "eks-jx" {
  source                    = "jenkins-x/eks-jx/aws"
  vault_user                = var.vault_user
  cluster_name              = "jx-eks"
  is_jx2                    = false
  cluster_version           = "1.17"
  enable_key_name           = true
  enable_external_dns       = false
  enable_worker_group       = false
  enable_logs_storage       = true
  enable_reports_storage    = true
  enable_repository_storage = true
  force_destroy             = true
  iops                      = 100
  key_name                  = "jx-eks"
  max_node_count            = 3
  node_group_disk_size      = "35"
  node_machine_type         = "t3.medium"
  production_letsencrypt    = false
  volume_size               = 35
}
