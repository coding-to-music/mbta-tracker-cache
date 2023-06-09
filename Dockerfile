FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

ENV POSTGRES_USER=myuser
ENV POSTGRES_PASS=mypassword
ENV POSTGRES_DB=mydb

# First run this at the command line:
# curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
# echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list
# sudo apt-get update

# Then build this Dockerfile via:
# docker build -t redis-postgres .

# Then run the built dockerfile via:
# docker run -d --name redis-postgres-container -p 5432:5432 -p 6379:6379 redis-postgres

# To stop the container:
# docker stop redis-postgres-container

# FROM docker.io/library/ubuntu:latest
# RUN echo "nameserver 8.8.8.8" >> /etc/resolv.conf && \
#     echo "nameserver 8.8.4.4" >> /etc/resolv.conf

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    gnupg2 \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Install Redis
# RUN wget -O /etc/apt/trusted.gpg.d/redis-server.gpg https://packages.redis.com/redis.key && \
#    echo "deb https://packages.redis.com/apt $(lsb_release -cs) main" > /etc/apt/sources.list.d/redis.list && \
RUN apt-get update && apt-get install -y redis-server && \
    sed -i 's/bind 127.0.0.1 ::1/bind 0.0.0.0/' /etc/redis/redis.conf && \
    echo "requirepass redis_password" >> /etc/redis/redis.conf

# Install PostgreSQL
RUN curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list && \
    apt-get update && apt-get install -y postgresql postgresql-contrib && \
    sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" /etc/postgresql/15/main/postgresql.conf && \
    echo "host all all 0.0.0.0/0 md5" >> /etc/postgresql/15/main/pg_hba.conf && \
    echo "host all all ::/0 md5" >> /etc/postgresql/15/main/pg_hba.conf && \
    echo "postgres:postgres_password" | chpasswd

# Expose ports
EXPOSE 5432
EXPOSE 6379

# Start services
CMD service postgresql start && service redis-server start && tail -f /dev/null
