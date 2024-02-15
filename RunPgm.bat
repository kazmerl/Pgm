:: Dockerfile and PgmAverage.exe has to be in the same directory as this batch file
:: %1 - Local full path to the pgm files
:: The same script can be used for Mac\Linux only the C:\Test part has to be updated accordingly

@echo off

if [%1]==[] (
	echo No directory specified, exiting!
	exit
)

if not exist %1\* (
	echo Specified path is not a valid directory
	exit
)

@echo on

docker build -t pgmimage .
docker run --name pgmContainer -v %1:C:\Test pgmimage C:\Test
docker rm pgmContainer
docker rmi pgmimage
