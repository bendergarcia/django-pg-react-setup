# Build
- run docker-compose build

## Create django app
- run docker-compose run web_api django-admin startproject project-name

## Create react app
- run docker-compose run web_react npx create-react-app front-end

## Start
- run docker-compose up

## Django Setup
- update settings.py to use postgres
- run docker-compose exec web_api python manage.py migrate

# Accessing
- django: localhost:3000/admin
- react: localhost:8000/ 
