FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

ARG TEXLIVE_NAME
ENV TEXLIVE_NAME ${TEXLIVE_NAME}

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    "texlive-${TEXLIVE_NAME}" \
    xpdf \
    vim && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /work

CMD ["/usr/bin/pdflatex"]
