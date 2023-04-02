# Reference: https://aboland.ie/Docker.html
# Build Steps:

# docker build -t giswqs/whiteboxR .
# docker push giswqs/whiteboxr:latest
# docker run -d -p 8787:8787 -e PASSWORD=mypassword -v ~/Documents:/home/rstudio/ giswqs/whiteboxr
# Then open your web browser and navigate to `http://localhost:8787`. The default username is `rstudio` and the default password is `mypassword`.

FROM rocker/rstudio:latest

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    libxml2 \
    git

RUN install2.r --error \
    --deps TRUE \
    devtools \
    whitebox

COPY misc/install.R /home/rstudio/

RUN Rscript /home/rstudio/install.R