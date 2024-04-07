# Dotnet 6 | C# webapp | Github Actions Workflow CI | AWS IIS Deployment | Teams notifications

![alt text](architecture/image.png)


## Problem statement

We have a Github repo and a dotnet webapp hosted on windows server IIS (AWS EC2). Requirement is to build an automated workflow in 3 parts where.

**Part 1:** Code is pushed to github repo and it triggers Github workflow to build the dotnet app, zip the build files and push to an AWS S3 bucket.
**Part 2:** S3 update triggers a CodeDeploy on the EC2 server, running other service scripts as well.
**Part 3:** Once the deployement is successful. Deployment status is updated  via Teams notifications

### Here are the steps invoved in the process

**Step 0:** Perform one-time CodeDeploy agent installation, Create SSM document for CodeDeploy, Setup S3 write access credentials for Github workflow Agent  

**Step 1:** Triggered build, zip and code push to AWS S3 from Github workflows. Steps in workflow yaml

**Step 2:** S3 Update triggers a CodeDeploy via CodeDeploy agent in the windows server.

**Step 3:** Code deploy agent fethcing the S3 code, unzipping it, running the app and relevant services, and restarting the IIS site.
 

**Step 4:** Code Deploy agent sends the teams group notifications 

**Step 5:** Team chat displays the Deploy status.






## Build and Dev
```sh
dotnet restore
dotnet build
dotnet run
```


## Project setup 
```sh
sudo apt-get update
sudo apt-get install -y dotnet-sdk-6.0

mkdir mywebapp
cd mywebapp

dotnet new webapp

# Create the .gitignore file using dotnet CLI
# dotnet new gitignroe

```

## IIS Setup

**NOTE**: Make sure hosting bundle is installed https://dotnet.microsoft.com/en-us/download/dotnet/6.0


## Github workflows for Dotnet

https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-net