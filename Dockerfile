# FROM nginx:stable-alpine
# RUN rm -rf /usr/share/nginx/html/index.html
# RUN rm -rf /etc/nginx/nginx.conf
# COPY nginx.conf /etc/nginx/nginx.conf
# COPY code /usr/share/nginx/html/

FROM nginx:stable-alpine

COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /tmp/client_temp /tmp/proxy_temp /tmp/fastcgi_temp /tmp/uwsgi_temp /tmp/scgi_temp \
 && chown -R nginx:nginx /tmp

# Possibly run nginx as root or adjust permissions if needed
