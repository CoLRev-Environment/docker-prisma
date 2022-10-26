# colrev/prisma

[PRISMA2020](https://github.com/prisma-flowdiagram/PRISMA2020) is an R package that produces a flow diagram that conforms to the PRISMA 2020 standards.

## Usage

The docker image expects the path to a csv file as the input and returns a PRISMA diagram at the specified output path.

`docker run --rm -ti colrev/prisma Rscript /prisma.R input.csv output.png`