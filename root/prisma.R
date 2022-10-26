library("PRISMA2020")

args = commandArgs(trailingOnly=TRUE)

input_file = args[1]
output_file = args[2]

flow_data <- read.csv(input_file)
flow_data <- PRISMA_data(flow_data)
flow <- PRISMA_flowdiagram(flow_data, fontsize = 12, interactive = TRUE, previous = FALSE, other = TRUE)
PRISMA_save(flow, filename = output_file, filetype = NA, overwrite = TRUE)