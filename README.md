# Webapp Template

Template designed to quickly build full stack apps without worrying about server development or docker. 

You can integrate Firebase super easily here or utilize one of the webapp templates by Jayden Pyles or Michael Gathara instead. 

Utilizes Github Actions and Ansible to build Docker images to quickly deploy onto an AWS EC2 Debian instance.

## Technologies

- Containerization: Docker/Docker Compose - please see [jayplyes/webapp-template](https://github.com/jayples/webapp-template) or [michaelgathara/webapp-template](https://github.com/michaelgathara/webapp-template)

- Frontend: React/Next.js

- Backend: FastAPI

- Frameworks/Libraries: TailwindCSS

## Deployment

### Local Deployment/Development

Uses `make` to quickly dispatch launch commands.

- `deps`: rebuilds the frontend to deploy statically using the api

- `frontend`: starts the frontend

- `backend`: starts the backend

- `build`: builds the npm assets using `npm build`

Ex: `make deps build up-dev`

### Server Deployment

You typically would want to use something like
- [jayples/webapp-template](https://github.com/jayples/webapp-template)
- [michaelgathara/webapp-template](https://github.com/michaelgathara/webapp-template)