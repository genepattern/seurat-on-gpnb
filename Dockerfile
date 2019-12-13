# copyright 2017-2018 Regents of the University of California and the Broad Institute. All rights reserved.
FROM genepattern/genepattern-notebook:19.12

MAINTAINER Edwin Juarez <ejuarez@ucsd.edu>

ENV LANG=C LC_ALL=C
USER root

#RUN conda install -y -c bioconda r-seurat==2.3.4
#RUN conda install -y -c bioconda r-seurat==3.0.2

#=========================================================================
#Did not work:
#RUN R -e "install.packages('devtools')"
#RUN R -e "require(devtools)"
#RUN R -e "install_version('Seurat', version = '3.1.0', dependencies= T)"
#=========================================================================


USER $NB_USER

# Instructions below
# build using this (using the same version as seurat for simplicity since this container only adds that):
# docker build -t edjuaro/docker-seurat:3.0.2 .

# run using this:
# docker run --rm -t -p 8888:8888 -e GRANT_SUDO=yes -v $PWD:/Notebooks -w /Notebooks edjuaro/docker-seurat:3.0.2 jupyter-notebook --no-browser --port 8888 --ip=0.0.0.0 --NotebookApp.password='' --NotebookApp.token='' --NotebookApp.password_required=False --allow-root
