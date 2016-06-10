# What is Phalcon

Phalcon is an open source, full stack framework for PHP written as a
C-extension, optimized for high performance. You don’t need to learn or use the
C language, since the functionality is exposed as PHP classes ready for you to
use. Phalcon also is loosely coupled, allowing you to use its objects as glue
components based on the needs of your application.

[Phalcon official homepage](https://phalconphp.com)

# How to use this image

This image provides php-fpm with phalcon extension.
You can use it as a base image to create Phalcon web applications.

```docker
FROM mclab/phalconphp
COPY src /app
```
