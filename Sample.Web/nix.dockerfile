FROM microsoft/dotnet:2.1-aspnetcore-runtime

WORKDIR /app

COPY bin/Debug/netcoreapp2.1/publish /app

ENTRYPOINT ["dotnet", "Sample.Web.dll"]