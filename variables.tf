variable "username1" {
    type = string
    default = "test"
}

variable "group" {
    type = string
    default = "IT-department"
}

variable "policy-name" {
    type = string
    default = "S3_get_put"
}

variable "policy" {
    type = string
    default = <<EOT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1703584063207",
      "Action": [
        "s3:DeleteBucket",
        "s3:DeleteObject",
        "s3:GetBucketAcl",
        "s3:GetObject",
        "s3:ListBucket",
        "s3:PutObject",
        "s3:ReplicateDelete",
        "s3:ReplicateObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::testing-bucket-nyi-5"
    }
  ]
}
EOT
}