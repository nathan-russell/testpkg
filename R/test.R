conversion_table <- read.table(
    system.file(
        "extdata",
        "to_caps.txt",
        package = "testpkg"
    ),
    stringsAsFactors = FALSE
)

to_caps <- hashmap::hashmap(
    conversion_table$V1,
    conversion_table$V2
)

#' @export
convert_letters <- function(letter_vector) {
    new_letters <- to_caps$find(letter_vector)
    new_letters
}
