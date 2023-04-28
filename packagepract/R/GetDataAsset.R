#' A function with no inputs that will download the dataset stored in the Dropbox link: 
#' https://www.dropbox.com/s/5mzc60tbh09ew49/lalonde%20nsw.csv.zip?dl=0. The function will download, unzip, and load the dataset into the R session, and then remove the downloaded file from disk.
#'
#' @returns Data stored in the Dropbox link. Currently, the link contains the data used in the paper Robert Lalonde, "Evaluating the Econometric Evaluations of Training Programs," American Economic Review, Vol. 76, pp. 604-620.
#'
#'
#' @examples
#' data <- GetDataAsset()

GetDataAsset <- function() {
  # Download the zipped file
  tmp <- tempfile()
  download.file("https://www.dropbox.com/s/5mzc60tbh09ew49/lalonde%20nsw.csv.zip?dl=1", destfile = tmp)

  # Unzip the file
  con <- unz(tmp, "lalonde nsw.csv")

  # Load the data into R and assign to "packagepractdata" variable
  packagepractdata <- read.csv(con)

  # Remove the temporary directory and zip file
  unlink(con)
  unlink(tmp)

  # Assign the data to the environment
  return(packagepractdata)
}

# Call function and assign result to object
PackageDataAsset <- GetDataAsset()

# Save object to .rda file in data folder of R package
save(PackageDataAsset, file = "data/PackageDataAsset.rda", version=3)

# Use data() function to add object to package

data(PackageDataAsset)

