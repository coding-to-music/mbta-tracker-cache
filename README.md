# mbta-tracker-cache

# 🚀 The data aggregator for the new train display system for Boston's MBTA by TransitMatters: https://newtrains.today 🚀

https://github.com/coding-to-music/mbta-tracker-cache

From / By https://github.com/mathcolo/tracker-cache (appears to no longer be public, does not exist)

https://github.com/coding-to-music/tracker-cache (clone made in 2019)

https://github.com/mathcolo/tracker-static (front end)

## Environment variables:

In the project root, create a file named `secrets.py` and populate it with your MBTA v3 API key: `API_KEY = <KEY>`

```java
API_KEY = <KEY>
```

## GitHub

```java
git init
git add .
git remote remove origin
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:coding-to-music/mbta-tracker-cache.git
git push -u origin main
```

# tracker-cache
tracker-cache is the backend for [https://newtrains.today](https://newtrains.today). The browser display components are located [here](https://github.com/mathcolo/tracker-static).

## Installation requirements
- Python 3.6+ with [pipenv](https://pipenv.readthedocs.io/en/latest/) installed
- Redis


## Development instructions
1. In the project root, create a file named `secrets.py` and populate it with your MBTA v3 API key: `API_KEY = <KEY>`
2. Install and run both [Redis](https://redis.io/) and [PostgreSQL](https://www.postgresql.org/download/) locally
3. In the root directory, run `pipenv install` to install Python dependencies
4. Run `python pull.py` to populate your Redis cache a single time (in production this is run every minute via cron)
5. Run `python server.py` to begin serving the API locally
6. Set up [tracker-static](https://github.com/mathcolo/tracker-static) to see the API consumed by the front-end JavaScript.

## Issues / problems getting set up

```java
# none of these helped

sudo python3 -m pip install -U setuptools

pip3 install -U pip
pip3 install -U setuptools
pip install ez_setup

pip list
```

## Error messages

```java
pipenv install
```

```java
Pipfile.lock not found, creating…
Locking [dev-packages] dependencies…
Locking [packages] dependencies…
lf.repository.get_dependencies(ireq)
  File "/usr/lib/python3/dist-packages/pipenv/patched/piptools/repositories/pypi.py", line 174, in get_dependencies
    legacy_results = self.get_legacy_dependencies(ireq)
  File "/usr/lib/python3/dist-packages/pipenv/patched/piptools/repositories/pypi.py", line 222, in get_legacy_dependencies
    result = reqset._prepare_file(self.finder, ireq, ignore_requires_python=True)
  File "/usr/lib/python3/dist-packages/pipenv/patched/notpip/req/req_set.py", line 644, in _prepare_file
    abstract_dist.prep_for_dist()
  File "/usr/lib/python3/dist-packages/pipenv/patched/notpip/req/req_set.py", line 134, in prep_for_dist
    self.req_to_install.run_egg_info()
  File "/usr/lib/python3/dist-packages/pipenv/vendor/pip9/req/req_install.py", line 435, in run_egg_info
    call_subprocess(
  File "/usr/lib/python3/dist-packages/pipenv/vendor/pip9/utils/__init__.py", line 705, in call_subprocess
    raise InstallationError(
pip9.exceptions.InstallationError: Command "python setup.py egg_info" failed with error code 1 in /tmp/tmplbyvhzljbuild/psycopg2-binary/
```

# install virtualenv

Using virtualenv, you can create isolated Python environments for each project or application, which can be used to install and manage different versions of Python and packages.

Here are the steps to install Python 3.6 alongside Python 3.8 using virtualenv:

Install virtualenv by running the following command:

```java
sudo apt-get install virtualenv
```

Create a new virtual environment for Python 3.6 by running the following command:

```java
virtualenv -p python3.6 pyenv36
```

This will create a new virtual environment named myenv36 with Python 3.6 as the default Python version.

Activate the virtual environment by running the following command:

```java
source pyenv36/bin/activate
```

This will activate the virtual environment and set the default Python version to Python 3.6.

Install any packages or dependencies you need for your project using pip, just like you would in a regular Python environment.

To switch back to the system-wide Python installation or another virtual environment, you can deactivate the current virtual environment by running the following command:

```java
deactivate
```

This will deactivate the current virtual environment and return you to the system-wide Python installation.

You can repeat these steps to create additional virtual environments for different versions of Python, and switch between them as needed for different projects or applications.

## Here are the steps to install Python 3.6 alongside Python 3.8 using pyenv:

Install pyenv by following the instructions in the official pyenv GitHub repository: https://github.com/pyenv/pyenv#installation

You'll need to choose the installation method appropriate for your system. For Ubuntu, you can use the curl method as follows:

```java
curl https://pyenv.run | bash
```

Install Python 3.6 using pyenv by running the following command:

```java
pyenv install 3.6.15

pyenv install 3.8
```

This will download and install Python 3.6.0 into your pyenv installation.

Create a new virtual environment for Python 3.6 by running the following command:

```java
pyenv virtualenv 3.6.15 py3.6

pyenv virtualenv 3.8 py3.8
```

This will create a new virtual environment named myenv36 with Python 3.6.0 as the default Python version.

Activate the virtual environment by running the following command:

```java
pyenv activate py3.6

pyenv activate py3.8
```

This will activate the virtual environment and set the default Python version to Python 3.6.0.

Install any packages or dependencies you need for your project using pip, just like you would in a regular Python environment.

To switch back to the system-wide Python installation or another virtual environment, you can deactivate the current virtual environment by running the following command:

```java
pyenv deactivate
```

This will deactivate the current virtual environment and return you to the system-wide Python installation.

## Add this to .bash_aliases or .bashrc

```java
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
```


## List installed pyenv environments

```java
pyenv versions
```

```java
  system
  3.6.15
  3.6.15/envs/py3.6
* py3.6 --> /home/tmc/.pyenv/versions/3.6.15/envs/py3.6 (set by PYENV_VERSION environment variable)
```

## Install missing libraries

```java
sudo apt-get install build-essential libbz2-dev libssl-dev libffi-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev liblzma-dev zlib1g-dev

sudo apt-get install libpq-dev python3-dev

pip install psycopg2-binary
```

## Another install attempt

```
pipenv install
```

```
Pipfile.lock not found, creating…
Locking [dev-packages] dependencies…
Locking [packages] dependencies…
Updated Pipfile.lock (db4242)!
Installing dependencies from Pipfile.lock (db4242)…
  🐍   ▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉ 0/0 — 00:00:00
To activate this project's virtualenv, run the following:
 $ pipenv shell
``` 

## create a docker file to install both redis and postgresql

Here's a Dockerfile that installs both Redis and PostgreSQL:

```java
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    gnupg2 \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Install Redis
RUN wget -O /etc/apt/trusted.gpg.d/redis-server.gpg https://packages.redis.com/redis.key && \
    echo "deb https://packages.redis.com/apt $(lsb_release -cs) main" > /etc/apt/sources.list.d/redis.list && \
    apt-get update && apt-get install -y redis-server && \
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
```

This Dockerfile will:

- Use Ubuntu as the base image.
- Install necessary dependencies such as wget, gnupg2, apt-transport-https, ca-certificates, and curl.
- Install Redis by downloading the Redis key, adding the Redis repository to the package manager, installing Redis server, and configuring it to listen to all network interfaces and require a password.
- Install PostgreSQL by downloading the PostgreSQL key, adding the PostgreSQL repository to the package manager, installing PostgreSQL server and its dependencies, and configuring it to listen to all network interfaces and allow password authentication.

- Expose ports for PostgreSQL (5432) and Redis (6379).
- Start PostgreSQL and Redis services, and then run a tail -f /dev/null command to keep the container running indefinitely.


You can name the file Dockerfile as this is the conventional name for a Dockerfile. To build an image from this Dockerfile, you can run the following command in the same directory as the Dockerfile:

```java
docker build -t redis-postgres .
```

This will create a Docker image with the tag redis-postgres. Once the image is built, you can run a container from the image using the following command:

```java
docker run -d --name redis-postgres-container -p 5432:5432 -p 6379:6379 redis-postgres
```

This will start a Docker container with the name redis-postgres-container, forwarding the container's PostgreSQL and Redis ports to the host machine's PostgreSQL and Redis ports respectively.

To stop the container, you can run the following command:

```java
docker stop redis-postgres-container
```

This will stop the container. You can start the container again with the same docker run command above.

If you want to remove the container completely, you can run the following command:

```java
docker rm redis-postgres-container
```

This will remove the container. If you want to remove the image, you can run:

```java
docker rmi redis-postgres
```
This will remove the redis-postgres image.

## View what is running inside the container

```
docker exec -it redis-postgres-container bash
```

Run this inside the container

```
ps -aux
```

Output

```
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.0   2880   964 ?        Ss   05:08   0:00 /bin/sh -c service postgresql start && service redis-server start && tail -f /dev/null
postgres      22  0.0  0.1 216612 30124 ?        Ss   05:08   0:00 /usr/lib/postgresql/15/bin/postgres -D /var/lib/postgresql/15/main -c config_file=/etc/postgresql/15/main/postgresql.conf
postgres      23  0.0  0.0 216740  8524 ?        Ss   05:08   0:00 postgres: 15/main: checkpointer 
postgres      24  0.0  0.0 216752  6968 ?        Ss   05:08   0:00 postgres: 15/main: background writer 
postgres      26  0.0  0.0 216612 11556 ?        Ss   05:08   0:00 postgres: 15/main: walwriter 
postgres      27  0.0  0.0 218200  9636 ?        Ss   05:08   0:00 postgres: 15/main: autovacuum launcher 
postgres      28  0.0  0.0 218180  9568 ?        Ss   05:08   0:00 postgres: 15/main: logical replication launcher 
redis         49  0.2  0.0  64208  6340 ?        Ssl  05:08   0:01 /usr/bin/redis-server 0.0.0.0:6379
root          50  0.0  0.0   2812  1004 ?        S    05:08   0:00 tail -f /dev/null
root          60  0.0  0.0   4616  3816 pts/0    Ss   05:13   0:00 bash
root          85  0.0  0.0   7360  2992 pts/0    R+   05:17   0:00 ps -aux
```

## See what Docker containers are running

```
docker ps
```

```
CONTAINER ID   IMAGE            COMMAND                  CREATED          STATUS          PORTS                                            NAMES
1bb3a8b41260   redis-postgres   "/bin/sh -c 'service…"   16 minutes ago   Up 16 minutes   0.0.0.0:5432->5432/tcp, 0.0.0.0:6379->6379/tcp   redis-postgres-container
```

## Attempt to run the python programs

```
python pull.py
```

```
Traceback (most recent call last):
  File "pull.py", line 15, in <module>
    postgres_conn = psycopg2.connect(dbname=secrets.POSTGRES_DB, user=secrets.POSTGRES_USER)
  File "/home/tmc/.local/share/virtualenvs/mbta-tracker-cache-LnrdrKmS/lib/python3.8/site-packages/psycopg2/__init__.py", line 122, in connect
    conn = _connect(dsn, connection_factory=connection_factory, **kwasync)
psycopg2.OperationalError: connection to server on socket "/var/run/postgresql/.s.PGSQL.5432" failed: No such file or directory
        Is the server running locally and accepting connections on that socket?
```

```
python server.py
```
 
```
 * Serving Flask app 'server'
 * Debug mode: on
Traceback (most recent call last):
  File "server.py", line 50, in <module>
    app.run(host='0.0.0.0', debug=True)
  File "/home/tmc/.local/share/virtualenvs/mbta-tracker-cache-LnrdrKmS/lib/python3.8/site-packages/flask/app.py", line 1191, in run
    run_simple(t.cast(str, host), port, self, **options)
  File "/home/tmc/.local/share/virtualenvs/mbta-tracker-cache-LnrdrKmS/lib/python3.8/site-packages/werkzeug/serving.py", line 1030, in run_simple
    application = DebuggedApplication(application, evalex=use_evalex)
  File "/home/tmc/.local/share/virtualenvs/mbta-tracker-cache-LnrdrKmS/lib/python3.8/site-packages/werkzeug/debug/__init__.py", line 284, in __init__
    self.secret = gen_salt(20)
  File "/home/tmc/.local/share/virtualenvs/mbta-tracker-cache-LnrdrKmS/lib/python3.8/site-packages/werkzeug/security.py", line 24, in gen_salt
    return "".join(secrets.choice(SALT_CHARS) for _ in range(length))
  File "/home/tmc/.local/share/virtualenvs/mbta-tracker-cache-LnrdrKmS/lib/python3.8/site-packages/werkzeug/security.py", line 24, in <genexpr>
    return "".join(secrets.choice(SALT_CHARS) for _ in range(length))
AttributeError: module 'secrets' has no attribute 'choice'
```

```
python pull.py
```

```
Traceback (most recent call last):
  File "pull.py", line 16, in <module>
    postgres_conn = psycopg2.connect(dbname=mysecrets.POSTGRES_DB, user=mysecrets.POSTGRES_USER)
  File "/home/tmc/.local/share/virtualenvs/mbta-tracker-cache-LnrdrKmS/lib/python3.8/site-packages/psycopg2/__init__.py", line 122, in connect
    conn = _connect(dsn, connection_factory=connection_factory, **kwasync)
psycopg2.OperationalError: connection to server on socket "/var/run/postgresql/.s.PGSQL.5432" failed: No such file or directory
        Is the server running locally and accepting connections on that socket?

(mbta-tracker-cache-LnrdrKmS)
```
