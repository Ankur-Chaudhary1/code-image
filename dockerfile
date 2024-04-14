FROM nginx

RUN apk add --no-cache bash

WORKDIR /app

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT ["nginx -g daemon off", "/app/entrypoint.sh"]