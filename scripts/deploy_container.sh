export AWS_ACCOUNT_ID=$(aws sts get-caller-identity --query "Account" --output text)
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin "$AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com"
docker pull "$AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/gsa-comet-prod-spring-backend:a571ee2"
docker run -d --name spring-app -p 8080:8080 "$AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/gsa-comet-prod-spring-backend:a571ee2"