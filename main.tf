 resource "aws_instance" "test" {
  ami           = "ami-0022f774911c1d690"
  instance_type = "t2.micro"
  tags= {
    Name = "dev"
  }
}


 resource "aws_s3_bucket" "b" {
  bucket = "olad657-bucket"
  tags = {
    Name        = "new york"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}

 resource "aws_s3_bucket" "c" {
  bucket = "olad687-bucket"
  tags = {
    Name        = "new york"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example2" {
  bucket = aws_s3_bucket.c.id
  acl    = "private"
}