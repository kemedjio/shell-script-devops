#########################
#
# Autor: Kemedjio Anicet
# Date: 04/06/2026
#
# This script is use to control the AWS resource usage
##########################
# S3, EC2, lambda, users

# list s3 buckets
aws s3 ls

# list lambda functions
aws lambda list-function

# list iam users
aws iam list-users
