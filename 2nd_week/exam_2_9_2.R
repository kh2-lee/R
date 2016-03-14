g=list("M","F","F","I","M","M","F")
typeof(g)

grps <- list()
for (gen in c("M","F","I")) grps[[gen]] <- which(g==gen)

grps
