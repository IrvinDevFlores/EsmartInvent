FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["EsmartInvent/EsmartInvent.csproj", "EsmartInvent/"]
RUN dotnet restore "EsmartInvent/EsmartInvent.csproj"
COPY . .
WORKDIR "/src/EsmartInvent"
RUN dotnet build "EsmartInvent.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "EsmartInvent.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "EsmartInvent.dll"]