module "backbase-eks-cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "backbase-eks-cluster"
  cluster_version = "1.18"
  subnets         = module.vpc.public_subnets
  vpc_id          = module.vpc.vpc_id

  worker_groups = [
    {
      instance_type = "t2.large"
      asg_min_size  = 1
	  asg_max_size  = 3
	  asg_desired_capacity = 1
	  additional_security_group_ids = [aws_security_group.worker_group_mgmt_one.id]
    }
  ]
  
  worker_additional_security_group_ids = [aws_security_group.all_worker_mgmt.id]
  
}

data "aws_eks_cluster" "cluster" {
  name = module.backbase-eks-cluster.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.backbase-eks-cluster.cluster_id
}



