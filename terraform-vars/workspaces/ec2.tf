resource "aws_instance" "terraform"{
    ami = "ami-09c813fb71547fc4f"
    instance_type = lookup(var.instance_type, terraform.workspace)
    vpc_security_group_ids = ["sg-024300ecf9b718f8c"] #it si default id in security group(created for allow all)
    tags = {
        Name = "terraform-${terraform.workspace}"
    }
}




    
