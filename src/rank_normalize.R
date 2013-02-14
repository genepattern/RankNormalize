## The Broad Institute
## SOFTWARE COPYRIGHT NOTICE AGREEMENT
## This software and its documentation are copyright (2013) by the
## Broad Institute/Massachusetts Institute of Technology. All rights are
## reserved.
##
## This software is supplied without any warranty or guaranteed support
## whatsoever. Neither the Broad Institute nor MIT can be responsible for its
## use, misuse, or functionality.

Rank.Normalize.Dataset <- function(input.ds, output.ds, scale = NULL, 
                                   threshold = NULL, ceiling = NULL, shift = NULL) {
   print(c("Running Rank.Normalize on data from:", input.ds))
   
   dataset <- read.dataset(input.ds)
   m <- dataset$data
   
   # Normalize the data
   m <- Rank.Normalize(m, scale, threshold, ceiling, shift)

   # Write back to file, matching the input format
   isGct <- regexpr(".gct$", tolower(input.ds))
   if (isGct[[1]] != -1) {
      norm_gct <- list(row.descriptions=dataset$row.descriptions, data=m)
      write.gct(norm_gct, filename = output.ds)
   } else {
      norm_res <- list(row.descriptions=dataset$row.descriptions,
                       column.descriptions=dataset$column.descriptions,
                       data=m, calls=dataset$calls) 
      write.res(norm_res, filename = output.ds)
   }  
}

Rank.Normalize <- function(m, scale = NULL, 
                           threshold = NULL, ceiling = NULL, shift = NULL) {
   # thresholdhold, ceilinging and shift
   if (!is.null(threshold)) { m[m < threshold] <- threshold }
   if (!is.null(ceiling)) { m[m > ceiling] <- ceiling }
   if (!is.null(shift)) { m <- m + shift }

   # column rank normalization with "average" used to break ties.
   cols <- length(m[1,])
   if (is.null(scale)) {
      # Column rank from 0 to 1.
      for (j in 1:cols) {
         m[,j] <- rank(m[,j], ties.method = "average")
      }
      m <- m/length(m[,1])
   } else {
      # Column rank from 0 to N-1 and then scale
      for (j in 1:cols) {
         m[,j] <- rank(m[,j], ties.method = "average") - 1
      }
      m <- scale*m/(length(m[,1]) - 1)
   }

   return(m)
}