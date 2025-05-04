
#' wzjtest
#'
#' @param x
#' @param y
#' @param learning_rate
#' @param max_iter
#'
#' @return
#' @export
#'
#' @examples
gd <- function(x, y, learning_rate = 0.01, max_iter = 1000) {

  n <- length(x)
  beta0 <- 0
  beta1 <- 0

  for (i in 1:max_iter) {
    # 计算梯度
    gradient0 <- -sum(y - (beta0 + beta1 * x)) / n
    gradient1 <- -sum(x * (y - (beta0 + beta1 * x))) / n

    # 更新参数
    beta0 <- beta0 - learning_rate * gradient0
    beta1 <- beta1 - learning_rate * gradient1
  }

  #return(c(beta0, beta1))
  c(beta0, beta1)
}

