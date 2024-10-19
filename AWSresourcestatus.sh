#!/bin/bash
set -x

echo "Listing S3 Buckets:"
aws s3 ls 

echo "Listing EC2 Instances:"
aws ec2 describe-instances --query 'Reservations[].Instances[].InstanceId' --output text

#This line lists the IDs of all EC2 instances. The --query and --output text options format the output to only show instance IDs.
echo "Listing Lambda Functions:"
aws lambda list-functions --query 'Functions[].FunctionName' --output text

#This line lists the names of all Lambda functions. The --query and --output text options format the output to only
echo "Listing IAM Users:"
aws iam list-users --query 'Users[].UserName' --output text

#This line lists the names of all IAM users. The --query and --output text options format the output to only show user names.

#Integrate with crontab:

0 1 * * * /c/Users/HP/Desktop/ShellScript/AWSresourcestatus.sh > /home/user/logs/aws_resource_list.log 2>&1

# 0 1 * * *: This part specifies the schedule. It means the job will run at minute 0 (the beginning of the hour), hour 1 (1 AM), every day of the month (), every month (), and every day of the week (*).
# /home/user/scripts/aws_resource_list.sh: This is the path to your script.
# > /home/user/logs/aws_resource_list.log 2>&1: This part redirects both standard output and standard error to a log file.
