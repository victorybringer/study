
cd /d %~dp0

docker build -t victorybringer/study .
docker run -it  -p 8080:8080 victorybringer/study

