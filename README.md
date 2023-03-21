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