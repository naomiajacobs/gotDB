FROM ryanwholey/node-mysql
RUN mkdir code
WORKDIR /code
COPY . /code
RUN apt-get update && \
  rm -rf /var/lib/apt/lists/*
RUN npm install --production
EXPOSE 2391
CMD ./_run.sh
