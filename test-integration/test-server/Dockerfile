FROM docker.io/haskell:latest

RUN apt update
RUN apt install -y python3 git 

COPY ../ ./
RUN ls

CMD python3 -m http.server -d /test-server 8080
