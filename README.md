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
