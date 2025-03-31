# 使用 .NET SDK（建置階段）
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# 複製 csproj 並還原相依套件
COPY *.csproj ./
RUN dotnet restore

# 複製整個專案並建置
COPY . ./
RUN dotnet publish -c Release -o /app/out

# 使用 ASP.NET Core Runtime（執行階段）
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app/out .

# 綁定容器埠
EXPOSE 80

# 啟動應用程式
ENTRYPOINT ["dotnet", "MyWebApp.dll"]