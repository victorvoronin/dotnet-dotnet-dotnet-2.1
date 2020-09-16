FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-alpine
ENV ASPNETCORE_URLS=http://+:8080
WORKDIR /app
COPY /aspnetcoreapp/bin/Debug/netcoreapp2.1/* ./
COPY /aspnetcoreapp/obj/Debug/netcoreapp2.1/* ./
ENTRYPOINT ["dotnet", "aspnetapp.dll"]
