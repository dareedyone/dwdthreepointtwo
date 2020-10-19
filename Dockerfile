FROM ubuntu:16.04
RUN apt-get --fix-missing update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash && \
    apt-get install -y nodejs && apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/*
COPY phonebook-app /usr/src/phonebook-app
WORKDIR /usr/src/phonebook-app
RUN npm install
EXPOSE 3000
CMD ["node", "."]

