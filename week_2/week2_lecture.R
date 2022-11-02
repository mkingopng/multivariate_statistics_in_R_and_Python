library(here)
library(readr)
library(dplyr)
library(ergm)
library(MVA)

bridges <- read_csv(here("datasets", "bridges.csv"))

bridges %>% select(erected, length) %>% mvn(mvnTest = "mardia")

(bridges.M <- bridges %>% filter (river=="M") %>% select(erected, length))
(bridges.A <- bridgers %>% filter (river=="M") %>% select(erected, length))

approx.hotelling.diff.test(bridges.M, bridges.A, assume.indep=TRUE)
approx.hotelling.diff.test(bridges.M, bridges.A, assume.indep=TRUE, var.equal=TRUE)
