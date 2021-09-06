aws s3 cp ./www/Archive.zip s3://elasticbeanstalk-us-east-1-532545066122/
aws elasticbeanstalk update-environment --application-name udagram-env --environment-name Udagramenv-env
