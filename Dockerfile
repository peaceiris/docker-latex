FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    "texlive-full=2017.20180305-1" \
    xpdf \
    vim && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /work

CMD ["/usr/bin/latexmk"]
