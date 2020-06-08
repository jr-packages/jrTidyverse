#' Left join animation
#'
#' Display an animation of a left join
#'
#' @export
left_join_animation = function() {
  run_animation("animated-left-join.gif")
}

#' Full join animation
#'
#' Display an animation of a full join
#'
#' @export
full_join_animation = function() {
  run_animation("animated-full-join.gif")
}

#' Inner join animation
#'
#' Display an animation of a inner join
#'
#' @export
inner_join_animation = function() {
  run_animation("animated-inner-join.gif")
}

#' Anti join animation
#'
#' Display an animation of a anti join
#'
#' @export
anti_join_animation = function() {
  run_animation("animated-anti-join.gif")
}

#' Right join animation
#'
#' Display an animation of a right join
#'
#' @export
right_join_animation = function() {
  run_animation("animated-right-join.gif")
}

#' Semi join animation
#'
#' Display an animation of a semi join
#'
#' @export
semi_join_animation = function() {
  run_animation("animated-semi-join.gif")
}



#' @importFrom htmltools browsable
#' @importFrom base64enc dataURI
run_animation = function(name) {
  anim = htmltools::tags$img(
    src = base64enc::dataURI(
      file = system.file(
        "animations", name, package = "jrTidyverse"
      ),
      mime = "image/gif")
  )
  htmltools::browsable(anim)
}
