
# Birthweight data
data(Birthwt)
X <- Birthwt$X
group <- Birthwt$group
# Linear regression
y <- Birthwt$bwt
fit <- grpreg(X, y, group, penalty="grMCP")
plot(fit)
predict(fit, type="ngroups", lambda=0.1)  # Number of nonzero groups
predict(fit, type="groups", lambda=0.1)   # Identity of nonzero groups
predict(fit, type="nvars", lambda=0.1)    # Number of nonzero coefficients
predict(fit, type="vars", lambda=0.1)     # Identity of nonzero coefficients
