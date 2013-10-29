Kx = function(X) {
    n = length(X);

    if (n < 4) {
      return("n < 4");
    }

    meanX = mean(X);
    sdX = sd(X);

    print("Mean of X")
    print(meanX)

    print("Standard Deviation of X")
    print(sdX)

    if (sdX == 0) {
      return("Standard Deviation is equal zero");
    }

    A = (n*(n+1))/((n-1)*(n-2)*(n-3));
    B = sum(((X-meanX)/sdX)^4);
    C = (3*(n-1)^2)/((n-2)*(n-3));

    total = A*B-C

    print("Result")
    return(total)
}
