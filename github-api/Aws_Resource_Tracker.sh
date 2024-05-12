#!/bin/bash

# Author: Ankit
# Date: 11th-Jan
#
# Version: v1
#
# This script will report the AWS resource usage
# AWS S3 
# AWS EC2 
# AWS IAM Users 
# AWS Lambda 

# used for the debug mode
set -x 

# List s3 buckets 
echo "Print list of s3 buckets" 
aws s3 ls 

# List ec2 Instances
echo "Print list of EC2 instances with id only" 
#aws ec2 describe-instances 
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'  

# List IAM users
echo "Print the IAM users" 
aws iam list-users 

# List lambda functions
echo "Print the lambda functions" 
aws lambda list-functions