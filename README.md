# Webapp Template

Template designed to quickly build full stack apps.

Utilizes Github Actions and Ansible to build Docker images to quickly deploy onto an AWS EC2 Debian instance.

## Technologies

- Containerization: Docker/Docker Compose - please see [jayplyes/webapp-template](https://github.com/jayples/webapp-template) or [michaelgathara/webapp-template](https://github.com/michaelgathara/webapp-template)

- Frontend: React/Next.js

- Backend: FastAPI

- Frameworks/Libraries: TailwindCSS

## Deployment

### Local Deployment

Uses `make` to quickly dispatch `docker-compose` commands.

- `deps`: rebuilds the frontend to deploy statically using the api

- `build`: builds the container using `docker-compose build `

- `up-prd`: ups the container using `docker-compose -f docker-compose.yml up`

- `up-dev`: ups the container using `docker-compose -f docker-compose.yml -f docker-compose.dev.yml up`
  which will deploy with local volumes.

Ex: `make deps build up-dev`

### Server Deployment

Easy deployment using `make setup deploy` after completing the required config files.

- `setup`: Install dependencies and clone repo onto server

- `deploy`: Deploy on server

To use a SSL certificate, uncomment the volumes under the `traefik` service. Add your own certificates for use in Traefik.