ARG V=2019-latest
FROM mcr.microsoft.com/mssql/server:$V
ENV ACCEPT_EULA=Y
VOLUME /var/opt/mssql
