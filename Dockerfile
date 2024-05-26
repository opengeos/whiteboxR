# Reference: https://aboland.ie/Docker.html
# Build Steps:

# docker build -t opengeos/whiteboxR .
# docker push giswqs/whiteboxr:latest
# docker run -d -p 8787:8787 -e PASSWORD=mypassword -v ~/Documents:/home/rstudio/ opengeos/whiteboxr
# Then open your web browser and navigate to `http://localhost:8787`. The default username is `rstudio` and the default password is `mypassword`.

FROM rocker/rstudio:latest

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    libxml2 \
    git \
    build-essential \
    libproj-dev \
    libgdal-dev \
    libgeos-dev \
    gdal-bin \
    proj-bin \
    libxt-dev \
    libxml2-dev \
    libsqlite3-dev \
    libfribidi-dev \
    libudunits2-dev

RUN install2.r --error \
    --deps TRUE \
    devtools \
    whitebox \
    Rcpp \
    Matrix \
    terra \
    sf \
    ggplot2 \
    tidyterra \
    rmarkdown \
    httr \
    caTools \
    rprojroot

RUN Rscript -e "whitebox::install_whitebox()"
