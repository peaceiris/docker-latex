## Docker Image for LaTeX


## Pull image

```sh
# texlive-latex-extra
docker pull peaceiris/latex:latest

# texlive-full
docker pull peaceiris/latex:latest-full
```

## Build tex file

```sh
docker run --rm -i -t -v ${PWD}:/work peaceiris/latex:latest paper.tex
```

- The default command is `pdflatex`.
- `paper.pdf` will be generated.
