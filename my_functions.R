#' Compute a ratio
#'
#' @param ratio number used for the ratio
#' @param number number value used to apply ratio
#' @param place number denominator
#'
#' @return number ratio of the value
#' @export
#'
#' @examples compute_ratio(10 ,55)
compute_ratio<-function(ratio, number, place=100){
  output<-number*ratio/place
  return(output)
}

compute_percent = function(input_percent,input_number){
  output = input_number * input_percent/100
  output
}

