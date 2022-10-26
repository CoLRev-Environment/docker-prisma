# base image https://hub.docker.com/u/rocker/
FROM rocker/r-base:latest

# install linux system dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    libcurl4-openssl-dev librsvg2-dev libxml2-dev libwebp-dev libv8-dev libnode-dev pandoc \
    && rm -rf /var/lib/apt/lists/*

# install PRISMA2020 package
RUN Rscript -e 'install.packages("PRISMA2020")'

# copy files
COPY /root/prisma.R /prisma.R
