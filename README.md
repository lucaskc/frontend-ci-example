# A frontend web application running inside a docker container

Docker compose that handles two services, one for starting the webapp and another to run the tests.

## Dev env

### to run
```docker-compose up```

### to run and build
```docker-compose up --build```

### to stop
```docker-compose down```

### to access the web app from your browser
```localhost:3000```

## Prod env

### to build (manually)
```docker build -t lucaskc/frontend-prod .```

### to run (manually)
```docker run -p 8080:80 lucaskc/frontend-prod```