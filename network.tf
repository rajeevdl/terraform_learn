module "vpcmodule" {

  #local module - no need to mention  version
  # source = "./module/vpc"  

  # From terraform registry - need to provide version
  source  = "rajeevdl/vpc-module/aws" 
  version = "1.0.0"

  # from https github repo
  # source="github.com/rajeevdl/terraform-aws-vpc-module?ref=v1.0.0" 
  
  vpc_id = "vpc-0fc666121270d4dfb"
  subnet_prefix = "rajeev-private"
}

output "listofazs"{
  value = module.vpcmodule.allazs
}