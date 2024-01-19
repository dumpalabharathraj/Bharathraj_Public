terraform{
    backend "s3" {
        bucket = "bharathraj" #This bucket must be already present in aws
        key = "devopsb16.tfstate" #inside Bharathraj s3 bucket devopsb16.tfstate will be created
        region = "us-east-1"
        dynamodb_table = "devopsb16-terraform-state-lock"
      
    }
}
