module "dev" {
    source = "./my-infra-module"
    my_security_group_name = "my-terra-infra-sg"
    SSH = 22
    HTTP = 80
    HTTPS = 443
    ami_id = "ami-02d26659fd82cf299"
    instance_type = "t2.micro"
    instance = 1
    app_name = "kanban-todo-app"
    my_env = "dev"
}

module "stage" {
    source = "./my-infra-module"
    my_security_group_name = "my-terra-infra-sg"
    SSH = 22
    HTTP = 80
    HTTPS = 443
    ami_id = "ami-02d26659fd82cf299"
    instance_type = "t2.micro"
    instance = 1
    app_name = "kanban-todo-app"
    my_env = "stage"
}

module "prod" {
    source = "./my-infra-module"
    my_security_group_name = "my-terra-infra-sg"
    SSH = 22
    HTTP = 80
    HTTPS = 443
    ami_id = "ami-0861f4e788f5069dd"
    instance_type = "t2.micro"
    instance = 2
    app_name = "kanban-todo-app"
    my_env = "prod"
}