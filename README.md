# ChatAppWeb

This project is the web client for the chat application. It was generated with [Angular CLI](https://github.com/angular/angular-cli) version 7.3.7.

## Local development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).

## Docker

The app uses Docker to create a distribution image for deployment purposes.

To create a development or production distributation image, execute the following:

```
# Development Image
docker build --build-arg build_configuration=development -t chatapp-web:0.0.1-dev .

# Production Image
docker build --build-arg build_configuration=production --build-arg NODE_ENV_ARG=production -t chatapp-web:0.0.1-prod .
```

Once the image is created, a container can be spawned by executing

```
# Sample
docker run -d -p <HOST_MACHINE_PORT>:80 --name <CONTAINER_NAME> <IMAGE_NAME>

# Example: Exposes the Angular app on port 80 of host machine
docker run -d -p 80:80 --name chatapp-web-container chatapp-web:0.0.1-dev
```
