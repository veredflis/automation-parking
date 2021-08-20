docker rm -f $(docker ps -a -q)
docker rmi $(docker images -a -q)

docker build -t ui-test .
#docker run -e PYTHONUNBUFFERED=1 -it -w /usr/workspace -v $(pwd):/usr/workspace ui-test bash
#docker run -e PYTHONUNBUFFERED=1 -it -w /usr/workspace --name parking ui-test

docker run -e PYTHONUNBUFFERED=1 -it -w /app -v $(pwd):/app ui-test bash

