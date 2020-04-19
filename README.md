## Docker Image for LaTeX


## Pull image

```sh
# texlive-latex-extra
docker pull peaceiris/latex:latest

# texlive-full
docker pull peaceiris/latex:latest-full
```


## Compile tex file

```sh
docker run --rm -i -t -v ${PWD}:/work peaceiris/latex:latest paper.tex
```

- The default command is `latexmk`.
- `paper.pdf` will be generated.


## docker-compose

```yaml
# docker-compose.yml

version: "3"

services:
  latex:
    container_name: paper_2020
    image: peaceiris/latex:v1.1.0-full
    volumes:
      - ${PWD}:/work
    environment:
      - DISPLAY=docker.for.mac.localhost:0
    stdin_open: true
    tty: true
    working_dir: /work
    command: latexmk -pdf -pvc
```

```perl
# .latexmkrc
@default_files = ('paper.tex');
```

```sh
docker-compose up
```


## References

- [How to install LaTex on Ubuntu 18.04 Bionic Beaver Linux - LinuxConfig.org](https://linuxconfig.org/how-to-install-latex-on-ubuntu-18-04-bionic-beaver-linux)
