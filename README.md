# Terraform EC2 AWS
 Create EC2 Instances using Terraform in AWS

 ## Multiple EC2 Instances create using Terraform
 
>```
>mkdir New_Folder
>```

>```
>cd New_Folder
>```

> ```
> wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
> ```

>```
>sudo apt install unzip
>```

>```
>unzip File_Name
>```

>```
> mv New_Folder ~/
>```

>```
>rm File_Name
>```

>```
>cd ..
>```

>```
>echo $PATH
>```

>```
>pwd
>```

>```
>nano ~/.bash_profile
>```

>```
>export PATH="$PATH Line Here"
>export PATH="pwd Line Here:$PATH"
>in nano file
>```

>```
>cd New_Folder
>```

>```
>nano New_File.tf
>```

> ```terraform
> provider "aws" {
>  region     = "us-west-2"
>  access_key = "my-access-key"
>  secret_key = "my-secret-key"
>}
>
>resource "aws_instance" "aws_server" {
>  count = 3
>
>  ami           = "ami-a1b2c3d4"
>  instance_type = "t2.micro"
>  
>  tags = {
>    Name = "Your_Name ${count.index}"
>  }
>}
> ```

