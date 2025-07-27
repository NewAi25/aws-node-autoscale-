#!/bin/bash
yum update -y
curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
yum install -y nodejs git

cd /home/ec2-user
git clone https://github.com/yourusername/aws-node-autoscale.git
cd aws-node-autoscale
npm install
node app.js &
