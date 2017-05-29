FROM rocker/r-base

RUN apt-get update -qq && apt-get install -y procps curl openssl

# Install system-wide so all users have it available.
RUN Rscript -e 'install.packages("devtools")'
RUN Rscript -e 'install.packages("plyr")'
RUN Rscript -e 'install.packages("dplyr")'
RUN Rscript -e 'install.packages("plumber")'
RUN Rscript -e 'install.packages("testthat")'
RUN Rscript -e 'install.packages("logging")'
RUN Rscript -e 'install.packages("parsedate")'


