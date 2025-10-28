FROM nginx:alpine

COPY ./index.html /usr/share/nginx/html/

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]