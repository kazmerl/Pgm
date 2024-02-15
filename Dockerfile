FROM mcr.microsoft.com/windows/servercore:ltsc2022
WORKDIR /PgmApplication
COPY /PgmAverageApp/PgmAverageApp.exe /PgmApplication
ENTRYPOINT ["/PgmApplication/PgmAverageApp.exe"]
CMD [""]