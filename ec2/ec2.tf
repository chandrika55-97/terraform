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
        cidr_blocks      = ["0.0.0.0/0"]   #allow from every pne here
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "allow_sshh"
    }
}

resource "aws_instance" "terraform"{
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh_ter.id]
    tags = {
        Name = "terraform"
    }
}

    
