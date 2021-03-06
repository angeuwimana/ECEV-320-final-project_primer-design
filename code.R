#import raw data and library

library(dplyr)
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

# test <- complement_primer_precursors[complement_primer_precursors$X1 %in% c("G","C"), ]
# test2 <- test[test$X2 %in% c("G","C"),]
# test3 <- complement_primer_precursors[complement_primer_precursors$X1 %in% c("G","C") & complement_primer_precursors$X2 %in% c("G", "C"), ]

#1 convert the dataframe into strings (vectors of strings), making each row a string
#2 use regex (regular expressions) with grep/grepl to make sure the string starts with or ends with a G or a C

z <- c("ace", "cat", "eat")




