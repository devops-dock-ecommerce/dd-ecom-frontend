FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html

# Ensure Nginx can read the frontend files
RUN chmod -R a+rX /usr/share/nginx/html

EXPOSE 80
