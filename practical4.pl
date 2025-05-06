% prolog program to calculate the nth fibonacci number.

fibo(1,0,1).
fibo(N,R0,R1) :-
	N1 is N-1,
	fibo(N1,R00,R01),
	R1 is R00+R01,
	R0 is R01.


# 🔹 Description:

# This Prolog program defines a recursive predicate fibo(N, R0, R1) that computes the N-th Fibonacci number, where:

#     R0 is the (N–1)-th Fibonacci number

#     R1 is the N-th Fibonacci number

# This structure allows tracking both the current and previous Fibonacci values during recursion.
# ✅ Logic Breakdown:

# % Base case:
# fibo(1, 0, 1).  % 0 and 1 are F(0) and F(1)

# % Recursive case:
# fibo(N, R0, R1) :-
#     N1 is N - 1,
#     fibo(N1, R00, R01),
#     R1 is R00 + R01,
#     R0 is R01.



# 🧪 Sample Queries:

#     Get the 5th Fibonacci number:

# ?- fibo(5, _, F).
# F = 5.

# Get both (N-1)th and Nth Fibonacci numbers:

# ?- fibo(6, Prev, Curr).
# Prev = 5,
# Curr = 8.

# Get F(1):

# ?- fibo(1, A, B).
# A = 0,
# B = 1.