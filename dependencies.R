## Simple script used to install all packages needed by the lecture/lab.

p <- c(
  "knitr",
  "janitor",
  "markdown",
  "rio",
  "rmarkdown",
  "shiny",
  "tidyverse",
  "Stat2Data"
)
install.packages(p)

unlink("midterm-answers.qmd")
