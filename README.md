# Alpine + HTTP

## TODO
* add apache log for the standard output

## Details

Environment Variables:
* HTTPD_PORT, default 80
* CUSTOM_VAR, index content

## How to use

Run: `docker run -ti -e HTTPD_PORT=8081 -e CUSTOM_VAR=container1 -p 8080:8081 felipeng/alpine-httpd:latest`
