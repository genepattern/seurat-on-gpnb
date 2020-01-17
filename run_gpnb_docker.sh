docker run --rm -v $PWD:/home/jovyan -p 8888:8888 -e GRANT_SUDO=yes genepattern/genepattern-notebook:$1
