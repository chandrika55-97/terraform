variable "ami_id"{
    type        = string  
    default     = "ami-09c813fb71547fc4f"
    description = "this ami id is devops_practice in RHEL9"
}

variable "instance_type"{
    default    = "t3.micro"
    type       = string
    
}

variable "tags"{
    type = map
    default = {
        Name        = "backend"
        Project     = "expense"
        Component   = "backed"
        Environment = "DEV"
        Terraform   = "true"

    }
}

variable "sg_name"{
    default = "allow_sshh"
}

variable "sg_description"{
    default = "Allow port number 22 for ssh access"

}

variable "from_port"{
    default = 22
    type    = number
}

variable "to_port"{
    default = 22
    type    = number
}

variable "protocol"{
    default = "tcp"
    type    = string
}
variable "ingress_cidr_blocks"{
    default = ["0.0.0.0/0"]
    type    = list(string)
}