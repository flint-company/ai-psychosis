FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY og-image.png /usr/share/nginx/html/og-image.png

RUN sed -i 's/listen       80;/listen       8000;/' /etc/nginx/conf.d/default.conf

EXPOSE 8000

CMD ["nginx", "-g", "daemon off;"]
