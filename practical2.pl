% prolog program to find the maximum of two numbers

max(X,Y) :-
	X=Y -> write("both are equal");
	X>Y -> write(X);
	X<Y -> write(Y).



# 🔹 Description:

# This Prolog program defines max(X, Y) to find and print the maximum of two numbers X and Y.

#     Uses -> (if-then) logic to:

#         Print "both are equal" if X = Y

#         Print X if X > Y

#         Otherwise, print Y if X < Y

#     ⚠️ Note: This predicate uses write/1 for side effects (printing). It does not return the result as a value for further computation.

# ✅ Logic Breakdown:

# max(X, Y) :-
#     X = Y -> write("both are equal") ;
#     X > Y -> write(X) ;
#     X < Y -> write(Y).


# 🧪 Sample Queries:

#     X is greater:

# ?- max(10, 5).
# 10
# true.

# Y is greater:

# ?- max(3, 8).
# 8
# true.

# Both are equal:

#     ?- max(7, 7).
#     both are equal
#     true.

