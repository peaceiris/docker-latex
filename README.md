## Docker Image for LaTeX



## `docker-compose.yml`

```yaml
version: "3"

services:
  latex:
    image: 'ghcr.io/peaceiris/docker-latex/latex:v1.1.0-full'
    container_name: 'latex_v1.1.0'
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

`paper.pdf` will be generated.



## Test

- [IEEE - Manuscript Templates for Conference Proceedings](https://www.ieee.org/conferences/publishing/templates.html)
- [How to install LaTex on Ubuntu 18.04 Bionic Beaver Linux - LinuxConfig.org](https://linuxconfig.org/how-to-install-latex-on-ubuntu-18-04-bionic-beaver-linux)
