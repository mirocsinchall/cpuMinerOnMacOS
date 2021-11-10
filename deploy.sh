docker rm -f $(docker ps -aqf "name=cpuminer") || true && 
docker rmi -f $(docker images 'cpuminer:latest' -a -q) || true && 
docker build -t cpuminer . && docker run -d  --name cpuminer cpuminer 