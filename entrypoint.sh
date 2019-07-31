echo Installing the ScopeAgent.Runner
dotnet tool install -g ScopeAgent.Runner --version 0.1.10

echo Fix Path
export PATH="$PATH:/root/.dotnet/tools"

echo Clean Solution
dotnet clean

echo Build Solution
dotnet build 

echo Run Tests
scope-run dotnet test
