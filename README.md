https://github.com/snuffles765/lesson6.git
docker build lesson6/ --progress=plain -t myapp:v1
docker run -d --name myappv1 -p 8080:8080 myapp:v1