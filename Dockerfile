FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY en.html /usr/share/nginx/html/en.html
COPY og-image.png /usr/share/nginx/html/og-image.png
COPY og-image.en.png /usr/share/nginx/html/og-image.en.png

RUN sed -i 's/listen       80;/listen       8000;/' /etc/nginx/conf.d/default.conf

EXPOSE 8000

CMD ["nginx", "-g", "daemon off;"]
