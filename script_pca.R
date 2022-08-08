## ------------------------- PCA ------------------------- ## 

library(ggfortify)
library(cluster)
library(patchwork)

setwd('G:/2.LABMETAMASS/DOUTORADO/DADOS')

## ------------------------- Maytenus ------------------------- ## 

#data_posneg <- read.csv('./maytenus_qc_posneglabel.csv', sep = ",") 
#data_species <- read.csv('./maytenus_qc_specieslabel.csv', sep = ",") 

data_posneg <- read.csv(choose.files(), sep = ",") # maytenus_qc_posneglabel.csv
data_species <- read.csv(choose.files(), sep = ",") # maytenus_qc_specieslabel.csv 

pca_data_posneg = data_posneg[3:268]
pca_data_species = data_species[3:268]

pca_res_posneg <- prcomp(pca_data_posneg, scale. = TRUE, center = TRUE)
pca_res_species <- prcomp(pca_data_species, scale. = TRUE, center = TRUE)


png("PCA_maytenus.png", height = 480, width = 1080 )
#par(mfrow = c(1,2))
posneg = autoplot(pca_res_posneg, data = data_posneg, colour = 'Label', size=2)
species = autoplot(pca_res_species, data = data_species, colour = 'Label', size=2)
posneg + species
dev.off()


## ------------------------- Mikania ------------------------- ## 


#data_posneg <- read.csv('./mikania_qc_posneg.csv', sep = ",") 
#data_species <- read.csv('./mikania_ipoqc_species.csv', sep = ",") 

data_posneg <- read.csv(choose.files(), sep = ",") # mikania_qc_posneg.csv
data_species <- read.csv(choose.files(), sep = ",") # mikania_ipoqc_species.csv

pca_data_posneg = data_posneg[3:166]
pca_data_species = data_species[3:166]

pca_res_posneg <- prcomp(pca_data_posneg, scale. = TRUE, center = TRUE)
pca_res_species <- prcomp(pca_data_species, scale. = TRUE, center = TRUE)


png("PCA_mikania.png", height = 480, width = 1080 )
#par(mfrow = c(1,2))
posneg = autoplot(pca_res_posneg, data = data_posneg, colour = 'Label', size=2)
species = autoplot(pca_res_species, data = data_species, colour = 'Label', size=2)
posneg + species
dev.off()



