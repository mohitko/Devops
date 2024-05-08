#!/bin/bash


##################################################
#
# Author : Mohit kodape
# Date :  8 may 2024
# 
# version : v1
#
# the script will report the AWS resources usage
##################################################



# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM User 


#debug command
set -x


# lsit the s3 bucket
echo "print the list of s3 bucket"
aws s3 ls >> resourceTracker

# list the EC2 instances
echo "print the list of ec2 instances"
aws ec2 describe-instances | jq ' .Reservation[].Instances[].InstanceId'
aws ec2 describe-instances  >>resourceTracker


# List  lambda function
echo "print the list of lambda function"
aws lambda list-functions 

#list IAM users
echo " list of users"
aws iam list-users >>resourceTracker
