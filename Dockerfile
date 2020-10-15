FROM ubuntu:16.04
RUN apt-get --fix-missing update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash && \
    apt-get install -y nodejs 
COPY country-data-app /usr/src/country-data-app
WORKDIR /usr/src/country-data-app
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]

