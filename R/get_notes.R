#' View the notes for the jrTidyverse course
#' 
#' This function opens a browser to show the pdf of the handout notes. This way attendees can always get those notes back.
#' 
#' @importFrom utils browseURL
#' @export
get_notes = function(){
  browseURL(system.file("notes.pdf",package = "jrTidyverse"))
}