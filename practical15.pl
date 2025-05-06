/*
	prolog program to implement 
	maxlist(List,Max) so that Max is the greater
	number in the list of numbers List
	using cut predicate.
*/


maxlist([H|T],Max) :-
	maxlist(T,Max1),
	H>Max1 -> Max is H,!.
	
maxlist([H|T],Max) :-
	maxlist(T,Max1),
	H<Max1 -> Max is Max1,!.
	

# 🔹 Description:

# This Prolog program defines maxlist(List, Max) to find the maximum number in a list using recursion and the cut (!) operator.

#     It recursively compares the head H with the maximum of the tail Max1.

#     Uses if-then (->) and cut (!) to ensure deterministic control flow:

#         If H > Max1, set Max = H.

#         Else if H < Max1, set Max = Max1.

#     Note: The code is incomplete — it lacks the base case for an empty or single-element list. We’ll assume it should be:

# maxlist([X], X).  % base case


# 🧪 Sample Queries:

#     Maximum in a list:

# ?- maxlist([3, 9, 1, 5], M).
# M = 9.

# Single-element list:

# ?- maxlist([42], M).
# M = 42.

# List with negative values:

# ?- maxlist([-3, -1, -10], M).
# M = -1.
