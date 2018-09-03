docker-compose up -d; docker build -t foo .; docker run -v ~/.ssh:/root/.ssh -it foo;
