resource "aws_instance" "terraform"{
    ami = "ami-09c813fb71547fc4f"
    instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"  #here condition false so t3.small is applicable -expression ? true : false
    vpc_security_group_ids = [aws_security_group.allow_ssh_ter.id]
    tags = {
        Name = "terraform"
    }
}
resource "aws_security_group" "allow_ssh_ter"{
    name = "Allow_sshh_ter"
    description = "Allow port number 22 for ssh access"

    egress{
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"     # 
        cidr_blocks      = ["0.0.0.0/0"]   #allow from everyone here
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "allow_sshh"
    }
}



    
