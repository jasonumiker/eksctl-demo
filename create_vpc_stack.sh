#!/bin/bash
aws cloudformation create-stack \
--template-url https://aws-quickstart.s3.amazonaws.com/quickstart-aws-vpc/templates/aws-vpc.template \
--stack-name VPC --region ap-northeast-1 \
--parameters ParameterKey=AvailabilityZones,ParameterValue="ap-northeast-1a\,ap-northeast-1c\,ap-northeast-1d" \
ParameterKey=NumberOfAZs,ParameterValue=3 ParameterKey=CreateAdditionalPrivateSubnets,ParameterValue=false \
ParameterKey=CreatePrivateSubnets,ParameterValue=true ParameterKey=PrivateSubnet1ACIDR,ParameterValue=10.0.0.0/19 \
ParameterKey=PrivateSubnet2ACIDR,ParameterValue=10.0.32.0/19 ParameterKey=PrivateSubnet3ACIDR,ParameterValue=10.0.64.0/19 \
ParameterKey=PublicSubnet1CIDR,ParameterValue=10.0.128.0/20 ParameterKey=PublicSubnet2CIDR,ParameterValue=10.0.144.0/20 \
ParameterKey=PublicSubnet3CIDR,ParameterValue=10.0.160.0/20 ParameterKey=VPCCIDR,ParameterValue=10.0.0.0/16 \
ParameterKey=PrivateSubnetATag2,ParameterValue=kubernetes.io/role/internal-elb=1 \
ParameterKey=PublicSubnetTag2,ParameterValue=kubernetes.io/role/elb=1