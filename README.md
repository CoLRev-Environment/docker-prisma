# colrev/prisma

[PRISMA2020](https://github.com/prisma-flowdiagram/PRISMA2020) is an R package that produces a flow diagram that conforms to the PRISMA 2020 standards.

Available at Dockerhub: [colrev/prisma](https://hub.docker.com/r/colrev/prisma)

## Usage

The docker image expects the path to a csv file as the input and returns a PRISMA diagram at the specified output path.

`docker run --rm -ti -v ${PWD}:/data colrev/prisma Rscript /prisma.R /data/PRISMA.csv /data/output.png`
