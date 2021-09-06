aws s3 cp ./www/Archive.zip s3://elasticbeanstalk-us-east-1-532545066122/
aws elasticbeanstalk update-environment --application-name udagram-env --environment-name Udagramenv-env

aws s3 cp ./www/Archive.zip $S3_SERVER_BUCKET
aws elasticbeanstalk create-application-version --application-name $EB_APP --version-label <<pipeline.git.revision>> --source-bundle S3Bucket="$EB_BUCKET",S3Key="Archive.zip"
aws elasticbeanstalk update-environment --application-name $EB_APP --environment-name $EB_ENV --version-label <<pipeline.git.revision>>