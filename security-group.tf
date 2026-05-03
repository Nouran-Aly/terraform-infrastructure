resource "aws_security_group" "pub-sg" {
    vpc_id = module.network_module.vpc_id 

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name: "public-sg"
    }

}

resource "aws_security_group" "pri-sg" {
    vpc_id = module.network_module.vpc_id

    ingress {
        from_port = 3000
        to_port = 3000
        protocol = "tcp"
        cidr_blocks = [module.network_module.vpc_cidr]
    }

    tags = {
        Name: "private-sg"
    }
}