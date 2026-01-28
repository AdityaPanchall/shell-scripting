#!/bin/bash 

#=================================================
# Author: Aditya Panchal
# Version: v0.0.1

#Script to automate the process of listing all the resources in an AWS Account 

# Below are the Services that are supported by this Script.
# 1. EC2
# 2. RDS
# 3. S3
# 4. CloudFront
# 5. VPC
# 6. IAM
# 7. Route53
# 8. CloudWatch
# 9. CloudFormation
# 10. Lambda
# 11. SNS
# 12. SQS
# 13. DynamoDB
# 14. EBS
# The script will prompt the user to enter the AWS region and the service for which the resources need to be listed.
#
# Usage: ./aws_resource_list.sh  <aws_region> <aws_service>
# Example: ./aws_resource_list.sh us-east-1 ec2
#############################################################################

#Check if the required number of arguments are passed correctly 
if [ $# -ne 2 ]; then
    echo "Usage: ./aws_resource_list.sh <aws_region> <aws_service>"
    echo "Example: ./aws_resource_list.sh us-east-1 ec2"
    exit 2 
fi 

#Assign the arguments to variable and convert the service to lowercase
aws_region=$1
aws_service=${2,,} 

#check if the AWS CLI is installed 
if ! command -v aws &> /dev/null; then 
    echo "AWS CLI is not installed. Please install it and try again."
    exit 1
fi 

#Check if the AWS CLI is configured 
if [ ! -d ~/.aws ]; then 
    echo "AWS CLI is not configured. Please Configure the AWS CLI and try again."
    exit 1
fi 

# List the resources based on the service
case $aws_service in 
    ec2)
        echo "Listing EC2 instances in $aws_region" 
        aws ec2 describe-instances --region $aws_region
        ;;

    rds)
        echo "Listing RDS Instances in $aws_region"
        aws rds describe-db-instances --region $aws_region
        ;;

    s3)
        echo "Listing S3 Buckets in $aws_region"
        aws s3api list-buckets --region $aws_region
        ;;

    cloudfront)
        echo "Listing CloudFront Distribution in $aws_region"
        aws cloudfront list-distributions --region $aws_region
        ;;

    vpc)
        echo "Listing VPCs in $aws_region"
        aws ec2 describe-vpcs --region $aws_region
        ;;

    iam)
        echo "Listing IAM Users in $aws_region"
        aws iam list-users --region $aws_region
        ;;

    route53)
        echo "Listing Route53 Hosted Zones in $aws_region"
        aws route53 list-hosted-zones --region $aws_region
        ;;

    cloudwatch)
        echo "Listing CloudWatch Alarms in $aws_region"
        aws cloudwatch describe-alarms --region $aws_region
        ;;
    
    cloudformation)
        echo "Listing CloudFormation Stacks in $aws_region"
        aws cloudformation describe-stacks --region $aws_region 
        ;;

    lambda)
        echo "Listening Lambda Functions in $aws_region"
        aws lambda list-functions --region $aws_region
        ;;

    sns)
        echo "Listening SNS Topics in $aws_region"
        aws sns list-topics --region $aws_region 
        ;;

    sqs)
        echo "Listening SQS Queues in $aws_region"
        aws sqs list-queues --region $aws_region 
        ;;

    dynamodb) 
        echo "Listening DynamoDB Tables in $aws_region"
        aws dynamodb list-tables --region $aws_region
        ;;

    ebs)
        echo "Listening EBS Volumes in $aws_region"
        aws ec2 describe-volumes --region $aws_region 
        ;;
       
    *) 
         echo "Invalid service. Please enter a valid service."
        exit 1
        ;;
esac 
