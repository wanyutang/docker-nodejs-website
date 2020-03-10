FROM node:alpine


# Install software   && \
RUN apk add --no-cache git
RUN apk add --no-cache openssh

ENV WEBSITE_PATH=/website

WORKDIR /tmp/resources
COPY . /website
COPY ./docker-entrypoint.sh /usr/bin/docker-entrypoint.sh
RUN chmod +x /usr/bin/docker-entrypoint.sh

WORKDIR /website
RUN cp ./app/index.js .

# RUN cp ./app/index.js /website/index.js && \
# echo "hi" -> /website/hi.txt && \
# cd /website


# RUN mkdir -p /temp/resources
# COPY . /temp/resources
# RUN echo 'Hello World' >> /temp/resources/hello
# VOLUME /temp/resources

# WORKDIR ${WEBSITE_PATH}
# COPY /temp/resources .

# ARG GIT_PATH
# ENV GIT_PATH=${GIT_PATH}

# # Install software   && \
# RUN apk add --no-cache git
# RUN apk add --no-cache openssh

# COPY /tmp/resources/docker-entrypoint.sh /usr/bin/docker-entrypoint.sh
# RUN chmod +x /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["1"]