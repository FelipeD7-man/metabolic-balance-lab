FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /app

COPY projeto-dolar.csproj ./
RUN dotnet restore projeto-dolar.csproj

COPY . .
RUN dotnet publish projeto-dolar.csproj -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app/out .

EXPOSE 8080
ENTRYPOINT ["dotnet", "projeto-dolar.dll"]
