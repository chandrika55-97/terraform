variable "instance_name"{
    type = list(string)
    default = ["mysql", "backend", "frontend"]
}

 variable "common_tags"{
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
 }    

 variable "zone_id"{
    default = "Z10181461GRAMI6CW8AY5"

 }

 variable "domain_name"{
    default = "daws81s.online"
 }