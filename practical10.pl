% prolog program to implement max(X,Y,Max) 
% so that Max is greater of two numbers X and Y.

max(X,Y,Max) :- 
	X>Y -> Max is X;
	Y>X -> Max is Y;
	X=Y -> write("both are equal"), Max is X.


# 🔹 Description:

# This Prolog program defines max(X, Y, Max) to find the greater of two numbers X and Y.

#     It uses if-then-else (-> ;) logic to:

#         Return X if X > Y

#         Return Y if Y > X

#         Print "both are equal" and return either (since X = Y) if they're equal

# 🧪 Sample Queries:

#     X greater than Y:

# ?- max(10, 5, M).
# M = 10.

# Y greater than X:

# ?- max(4, 9, M).
# M = 9.

# X equals Y:

# ?- max(7, 7, M).
# both are equal
# M = 7.
