## Drupal image for development

This is a simple Drupal Docker image, that is optimized for development. It extends the [official drupal image](https://hub.docker.com/_/drupal/) but makes it possible to start from scratch and easily work with volumes for development.

### Sample `docker-compose.yaml` configuration:

```yaml
version: '2'

services:
  web:
    image: akalipetis/drupal:8.2-apache
    ports:
      - 80
    volumes:
      - ./:/mnt/data

  mysql:
    image: mariadb:10.1
    environment:
      - MYSQL_ROOT_PASSWORD=mysecretpassword
      - MYSQL_DATABASE=drupal
    volumes:
      - mysql_data:/var/lib/mysql

volumes:
  mysql_data:
```
