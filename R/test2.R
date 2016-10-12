#' @export
convert_letters2 <- function(letter_vector) {
    ptr.address <- capture.output(
        internal.env$to_caps$.pointer
    )
    if (ptr.address == "<pointer: (nil)>") {
        ## for debugging only
        cat("Initializing internal.env$to_caps.\n")
        internal.env$to_caps <- hashmap::hashmap(
            conversion_table$V1,
            conversion_table$V2
        )
    }

    new_letters <- internal.env$to_caps$find(letter_vector)
    new_letters
}
