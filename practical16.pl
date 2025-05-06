% prolog program to implement GCD of two nummbers

g(R,0,R).

g(BN,SN,Ans) :-
	Rd is mod(BN,SN),
	g(SN,Rd,Ans).

# 🔹 Description:

# This Prolog program implements the Euclidean algorithm to compute the GCD (Greatest Common Divisor) of two numbers.

#     g(BN, SN, Ans) succeeds when Ans is the GCD of BN and SN.

#     It recursively reduces the problem: g(BN, SN, Ans) → g(SN, BN mod SN, Ans).

#     Base case: if the second number becomes 0, the first number is the GCD.


# ?- g(48, 18, Ans).
# Ans = 6.
