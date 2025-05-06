% Prolog program to find the factorial of the given number


fact(0,1).
fact(N,R) :- 
	N>0 ->
		N1 is N-1,
		fact(N1,R1),
		R is N*R1;
	N<0 ->
		N1 is N+1,
		fact(N1,R1),
		R is N*R1.
	


# 🔹 Description:

# This Prolog program defines fact(N, R) to compute the factorial of a number N, with special handling for both positive and negative integers using recursion.

#     Base case: fact(0, 1) — the factorial of 0 is 1.

#     Recursive case (N > 0): multiplies N by the factorial of N - 1.

#     Recursive case (N < 0): also recursively computes factorial for negative values by treating them symmetrically as fact(N + 1, R1), though factorial is mathematically undefined for negative integers.

# ⚠️ Important Note:

#     Factorial is not defined for negative integers in standard mathematics.



# 🧪 Sample Queries:

#     Factorial of 5:

# ?- fact(5, R).
# R = 120.

# Factorial of 0:

# ?- fact(0, R).
# R = 1.

# Factorial of negative number (⚠️ infinite recursion!):

# ?- fact(-3, R).
# % This will cause an infinite loop or stack overflow.
