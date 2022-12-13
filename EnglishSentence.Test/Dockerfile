FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["EnglishSentence/EnglishSentence.csproj", "EnglishSentence/"]
RUN dotnet restore "EnglishSentence/EnglishSentence.csproj"
COPY ["EnglishSentence.Test/EnglishSentence.Test.csproj", "EnglishSentence.Test/"]
RUN dotnet restore "EnglishSentence.Test/EnglishSentence.Test.csproj"
COPY . .