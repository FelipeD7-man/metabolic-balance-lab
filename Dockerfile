# Etapa 1 - build
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /app

COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o out

# Etapa 2 - runtime
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app

ENV ASPNETCORE_URLS=http://0.0.0.0:8080
EXPOSE 8080

COPY --from=build /app/out .

ENTRYPOINT ["dotnet", "projeto-dolar.dll"]

