#import raw data and library

library(tidyverse)
plasmid_sequence <- read.delim("human TET2 sequence single strand.txt", header = FALSE, stringsAsFactors = FALSE, sep = "\t")

#b is the DNA position we want the primer, here we use an example, b=1680, and you may change to any numbers
b <- 1680
#clean up raw data, to data frame

plasmid_sequence <- strsplit(plasmid_sequence[1,1],"")
plasmid_sequence <- data.frame(plasmid_sequence[1], row.names = NULL, 
                             check.rows = FALSE, check.names = TRUE, 
                             fix.empty.names = TRUE, stringsAsFactors=FALSE)

#generate all primer_precursors (a = length of primer -1)

a <- 17
primer_precursor_17 <- NULL
for (i in 0:a){
  primer_precursor_17 <- rbind(primer_precursor_17, plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

primer_precursor_17 <- data.frame(primer_precursor_17, row.names = NULL, 
                               check.rows = FALSE, check.names = TRUE, 
                               fix.empty.names = TRUE, stringsAsFactors=FALSE)

a <- 18
primer_precursor_18 <- NULL
for (i in 0:a){
  primer_precursor_18 <- rbind(primer_precursor_18, plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

primer_precursor_18 <- data.frame(primer_precursor_18, row.names = NULL, 
                                  check.rows = FALSE, check.names = TRUE, 
                                  fix.empty.names = TRUE, stringsAsFactors=FALSE)

a <- 19
primer_precursor_19 <- NULL
for (i in 0:a){
  primer_precursor_19 <- rbind(primer_precursor_19, plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

primer_precursor_19 <- data.frame(primer_precursor_19, row.names = NULL, 
                                  check.rows = FALSE, check.names = TRUE, 
                                  fix.empty.names = TRUE, stringsAsFactors=FALSE)

a <- 20
primer_precursor_20 <- NULL
for (i in 0:a){
  primer_precursor_20 <- rbind(primer_precursor_20, plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

primer_precursor_20 <- data.frame(primer_precursor_20, row.names = NULL, 
                                  check.rows = FALSE, check.names = TRUE, 
                                  fix.empty.names = TRUE, stringsAsFactors=FALSE)

a <- 21
primer_precursor_21 <- NULL
for (i in 0:a){
  primer_precursor_21 <- rbind(primer_precursor_21, plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

primer_precursor_21 <- data.frame(primer_precursor_21, row.names = NULL, 
                                  check.rows = FALSE, check.names = TRUE, 
                                  fix.empty.names = TRUE, stringsAsFactors=FALSE)

a <- 22
primer_precursor_22 <- NULL
for (i in 0:a){
  primer_precursor_22 <- rbind(primer_precursor_22, plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

primer_precursor_22 <- data.frame(primer_precursor_22, row.names = NULL, 
                                  check.rows = FALSE, check.names = TRUE, 
                                  fix.empty.names = TRUE, stringsAsFactors=FALSE)

a <- 23
primer_precursor_23 <- NULL
for (i in 0:a){
  primer_precursor_23 <- rbind(primer_precursor_23, plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

primer_precursor_23 <- data.frame(primer_precursor_23, row.names = NULL, 
                                  check.rows = FALSE, check.names = TRUE, 
                                  fix.empty.names = TRUE, stringsAsFactors=FALSE)


primer_precursors <- bind_rows(primer_precursor_17, primer_precursor_18, primer_precursor_19, 
                               primer_precursor_20, primer_precursor_21, primer_precursor_22, 
                               primer_precursor_23, .id = NULL)

#---------------------------------------------------------------------------------------------------------------
#complement whole_sequence, and subtract all primers in the complemented sequence again

plasmid_sequence <- read.delim("human TET2 sequence single strand.txt", header = FALSE
                                          , stringsAsFactors = FALSE)

plasmid_sequence <- strsplit(plasmid_sequence[1,1],"")
plasmid_sequence <- paste(unlist(plasmid_sequence), collapse='')
complement_plasmid_sequence <- chartr("ATGC","TACG", plasmid_sequence)
complement_plasmid_sequence <- as.character(complement_plasmid_sequence)

complement_plasmid_sequence <- strsplit(complement_plasmid_sequence,"")

complement_plasmid_sequence <- data.frame(complement_plasmid_sequence[1], row.names = NULL, 
                               check.rows = FALSE, check.names = TRUE, 
                               fix.empty.names = TRUE, stringsAsFactors=FALSE)


a <- 17
complement_primer_precursor_17 <- NULL
for (i in 0:a){
  complement_primer_precursor_17 <- rbind(complement_primer_precursor_17, 
                                          complement_plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

complement_primer_precursor_17 <- data.frame(complement_primer_precursor_17, row.names = NULL, 
                                  check.rows = FALSE, check.names = TRUE, 
                                  fix.empty.names = TRUE, stringsAsFactors=FALSE)

a <- 18
complement_primer_precursor_18 <- NULL
for (i in 0:a){
  complement_primer_precursor_18 <- rbind(complement_primer_precursor_18, 
                                          complement_plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

complement_primer_precursor_18 <- data.frame(complement_primer_precursor_18, row.names = NULL, 
                                  check.rows = FALSE, check.names = TRUE, 
                                  fix.empty.names = TRUE, stringsAsFactors=FALSE)

a <- 19
complement_primer_precursor_19 <- NULL
for (i in 0:a){
  complement_primer_precursor_19 <- rbind(complement_primer_precursor_19, 
                                          complement_plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

complement_primer_precursor_19 <- data.frame(complement_primer_precursor_19, row.names = NULL, 
                                  check.rows = FALSE, check.names = TRUE, 
                                  fix.empty.names = TRUE, stringsAsFactors=FALSE)

a <- 20
complement_primer_precursor_20 <- NULL
for (i in 0:a){
  complement_primer_precursor_20 <- rbind(complement_primer_precursor_20, 
                                          complement_plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

complement_primer_precursor_20 <- data.frame(complement_primer_precursor_20, row.names = NULL, 
                                  check.rows = FALSE, check.names = TRUE, 
                                  fix.empty.names = TRUE, stringsAsFactors=FALSE)

a <- 21
complement_primer_precursor_21 <- NULL
for (i in 0:a){
  complement_primer_precursor_21 <- rbind(complement_primer_precursor_21, 
                                          complement_plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

complement_primer_precursor_21 <- data.frame(complement_primer_precursor_21, row.names = NULL, 
                                  check.rows = FALSE, check.names = TRUE, 
                                  fix.empty.names = TRUE, stringsAsFactors=FALSE)

a <- 22
complement_primer_precursor_22 <- NULL
for (i in 0:a){
  complement_primer_precursor_22 <- rbind(complement_primer_precursor_22, 
                                          complement_plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

complement_primer_precursor_22 <- data.frame(complement_primer_precursor_22, row.names = NULL, 
                                  check.rows = FALSE, check.names = TRUE, 
                                  fix.empty.names = TRUE, stringsAsFactors=FALSE)

a <- 23
complement_primer_precursor_23 <- NULL
for (i in 0:a){
  complement_primer_precursor_23 <- rbind(complement_primer_precursor_23, 
                                          complement_plasmid_sequence[(b-i):(b+a-i),], .id = NULL)}

complement_primer_precursor_23 <- data.frame(complement_primer_precursor_23, row.names = NULL, 
                                  check.rows = FALSE, check.names = TRUE, 
                                  fix.empty.names = TRUE, stringsAsFactors=FALSE)


complement_primer_precursors <- bind_rows(complement_primer_precursor_17, complement_primer_precursor_18, 
                                          complement_primer_precursor_19, complement_primer_precursor_20, 
                                          complement_primer_precursor_21, complement_primer_precursor_22, 
                                          complement_primer_precursor_23, .id = NULL)
###############################################################################################3
#### Ange's Code: Finding primers and complement primer strands that begin and end with G/C
###############################################################################################


### Complement strand
Allcomplementprecursors<-list(complement_primer_precursor_17,complement_primer_precursor_18,
     complement_primer_precursor_19,complement_primer_precursor_20,
     complement_primer_precursor_21,complement_primer_precursor_22,
     complement_primer_precursor_23)

list_of_good_complement_precursors <- list()

for(file in Allcomplementprecursors){
  #removing rows that start with A or T
whichcol <-1
Lastcall <- file[ ,whichcol]
NotAorT<- !(Lastcall %in% c("A","T"))
file <-file[NotAorT, ]

#removing rows that end with A or T
whichcol <-ncol(file)
Lastcall <- file[ ,whichcol]
NotAorT<- !(Lastcall %in% c("A","T"))
list_of_good_complement_precursors[[ncol(file) - 17]] <- file[NotAorT, ]
 
}

good_complement_precursors <- bind_rows(list_of_good_complement_precursors)
good_complement_precursors

# Excluding complement_precursors with 22 base pairs 

good_complement_precursors <-good_complement_precursors[-c(18:24),]
good_complement_precursors %>% 
  unite("Complement", X1:X24, na.rm = TRUE, sep = "")



####### Primer precursor strand 

Allprimerprecursors<-list(primer_precursor_17,primer_precursor_18,
                              primer_precursor_19,primer_precursor_20,
                              primer_precursor_21,primer_precursor_22,
                              primer_precursor_23)

list_of_good_primer_precursors <- list()
for(file in Allprimerprecursors){
  whichcol <-1
  Lastcall <- file[ ,whichcol]
  NotAorT<- !(Lastcall %in% c("A","T"))
  file <-file[NotAorT, ]
  
  
  whichcol <-ncol(file)
  Lastcall <- file[ ,whichcol]
  NotAorT<- !(Lastcall %in% c("A","T"))
  file <-file[NotAorT, ]
  list_of_good_primer_precursors[[ncol(file) - 17]] <- file
  
}

good_primer_precursors <- bind_rows(list_of_good_primer_precursors)
good_primer_precursors

# Exclude primer_precursors with 22 base pairs 

good_primer_precursors <- good_primer_precursors[-c(18:24),]

good_primer_precursors %>% 
  unite("Primer", X1:X24, na.rm = TRUE, sep = "")

