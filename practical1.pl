% sum(X, Y, Z) - Z is the sum of X and Y.
sum(X, Y, Z) :-
    Z is X + Y.


# 🔹 Description:

# This is a simple Prolog program defining the predicate sum(X, Y, Z) which computes the sum of two numbers X and Y, and unifies the result with Z.

#     It uses the arithmetic operator is to evaluate X + Y and bind the result to Z.


# 🧪 Sample Queries:

#     Sum of two positive numbers:

# ?- sum(3, 5, R).
# R = 8.

# Sum with negative number:

# ?- sum(-2, 6, R).
# R = 4.

# Floating point addition:

# ?- sum(2.5, 3.1, R).
# R = 5.6.

# Using variables:

# ?- X = 10, Y = 20, sum(X, Y, R).
# R = 30.