aws s3 cp ./www/Archive.zip $S3_BUCKET_SERVER
aws elasticbeanstalk create-application-version --application-name udagram-env --version-label <<pipeline.git.revision>> --source-bundle S3Bucket="elasticbeanstalk-us-east-1-532545066122",S3Key="Archive.zip"
aws elasticbeanstalk update-environment --application-name udagram-env --environment-name Udagramenv-env --version-label <<pipeline.git.revision>>
