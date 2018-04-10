# 3.2 Binding Basics ------------------------------------------------------

# Explain the relationship between a, b, c and d in the following code:

a <- 1:10
b <- a
c <- b
d <- 1:10

# Unlike python these are not mutable and simply contain copies of a 1:10 vector

# The following code accesses the mean function in multiple different ways. Do they all point to the same underlying function object? Verify with lobstr::obj_addr().

mean
base::mean
get("mean")
evalq(mean)
match.fun("mean")


# By default, base R data import functions, like read.csv(), will automatically convert non-syntactic names to syntactic names. Why might this be problematic? What option allows you to suppress this behaviour?

What rules does make.names() use to convert non-syntactic names into syntactic names?

I slightly simplified the rules that govern syntactic names. Why is .123e1 not a syntactic name? Read ?make.names.