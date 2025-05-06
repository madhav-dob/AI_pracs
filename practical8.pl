% prolog program to implement append two list.


apend([],L,L).

apend([X|L1Tail],L2,[X|RTail]) :-
	apend(L1Tail, L2, RTail).
	


# 🔹 Description:

# This Prolog program implements apend(List1, List2, Result) to concatenate two lists — combining elements of List1 and List2 into a single Result.

#     The base case: appending an empty list to L yields L.

#     The recursive case: prepends the head of List1 (X) to the result of appending its tail with List2.

#     Note: The predicate is named apend (missing a "p"). For clarity and compatibility with Prolog's built-in predicate, you may prefer append.

# 🧪 Sample Queries:

#     Appending two non-empty lists:

# ?- apend([1, 2], [3, 4], R).
# R = [1, 2, 3, 4].

# Appending with an empty first list:

# ?- apend([], [a, b], R).
# R = [a, b].

# Appending with an empty second list:

# ?- apend([x, y], [], R).
# R = [x, y].

# Appending two empty lists:

# ?- apend([], [], R).
# R = [].
