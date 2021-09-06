# Hosting a Full-Stack Application

### **You can use you own project completed in previous courses or use the provided Udagram app for completing this final project.**

---

In this project you will learn how to take a newly developed Full-Stack application built for a retailer and deploy it to a cloud service provider so that it is available to customers. You will use the aws console to start and configure the services the application needs such as a database to store product information and a web server allowing the site to be discovered by potential customers. You will modify your package.json scripts and replace hard coded secrets with environment variables in your code.

The service is hosted on AWS using Elastic Beanstalk for the Backend API including a postgres relational database and a S3 Bucket for the frontend.

![alt text](docu/aws_architecture.png)


CircleCi is used to automise the deployment process. It connects to the Github project and is set up to be executed automatically when code is pushed on the main Github branch.

![alt text](docu/deploy.png)
