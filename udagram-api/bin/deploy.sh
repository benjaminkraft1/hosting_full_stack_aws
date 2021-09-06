aws s3 cp ./www/Archive.zip $S3_BUCKET_SERVER
aws elasticbeanstalk create-application-version --application-name $EB_APP --version-label <<pipeline.git.revision>> --source-bundle S3Bucket="$EB_BUCKET",S3Key="Archive.zip"
aws elasticbeanstalk update-environment --application-name $EB_APP --environment-name $EB_ENV --version-label <<pipeline.git.revision>>
