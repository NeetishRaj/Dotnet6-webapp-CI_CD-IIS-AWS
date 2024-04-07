# Dotnet 6 | C# webapp | Github Actions Workflow CI | AWS IIS Deployment


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