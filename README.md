# GymWebsite
 This repository contains the source code for a gym website, implemented as a java spring application using hibernate, JPA, and Spring Security.


## Project Structure

project-root/ ├── db-init-scripts/ # SQL scripts for initializing the database │ └── init.sql # Script to create the database and tables ├── Dockerfile # Dockerfile for building the Spring Boot application ├── docker-compose.yml # Docker Compose file for managing the application services └── ... # Other project files

yaml


## Configuration

### Database Configuration

The database is configured to use PostgreSQL. The connection settings can be found in the `docker-compose.yml` file:

```yaml
environment:
  POSTGRES_DB: gym_website
  POSTGRES_USER: postgres
  POSTGRES_PASSWORD: postgres

Application Properties

The Spring Boot application is configured to connect to the PostgreSQL database using the following properties in your application.properties file:

properties

spring.datasource.driverClassName=org.postgresql.Driver
spring.datasource.url=jdbc:postgresql://db:5432/gym_website
spring.datasource.username=postgres
spring.datasource.password=postgres

spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect
spring.jpa.properties.hibernate.show_sql=true

Getting Started
Step 1: Clone the Repository

Clone this repository to your local machine:

bash

git clone <your-repository-url>
cd <your-repository-directory>

Step 2: Build and Run the Application

Run the following command to build and start the Docker containers:

bash

docker-compose up --build

Step 3: Access the Application

Once the containers are running, you can access the application at:

arduino

http://localhost:8080

Step 4: Stop the Application

To stop the running application, use:

bash

docker-compose down

