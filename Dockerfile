
FROM nginx:alpine


COPY . /usr/share/nginx/html


RUN rm -f /usr/share/nginx/html/Dockerfile \
    /usr/share/nginx/html/docker-compose.yml \
    /usr/share/nginx/html/Makefile


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
