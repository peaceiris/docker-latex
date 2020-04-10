FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    texlive-latex-extra \
    vim

WORKDIR /work

CMD ["bash"]
