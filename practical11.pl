/* prolog program to implement maxlist(List,Max) 
 	so that Max is the greatest number in the list of number list. */
 	

 	
maxlist([H|T],Max) :- 
	length(T,L),
	L>0 ->
	(
		maxlist(T,MaxRec),
		(
			H > MaxRec -> Max is H ; Max is MaxRec	
		
		)
	
	) ;
	Max is H.


# 🔹 Description:

# This Prolog program implements maxlist(List, Max) to find the maximum element in a list of numbers, using recursion and a conditional (-> ;) to select the larger value between the current head and the maximum of the rest.

#     It first checks the length of the tail (T).

#     If the tail is non-empty (L > 0), it recursively computes the maximum of the tail (MaxRec) and compares it with the head H.

#     If the list has only one element, that element is the maximum.

#     This version uses an inline if-then-else construct (-> ;) instead of multiple clauses.

# 🧪 Sample Queries:

#     Maximum in a list of integers:

# ?- maxlist([3, 9, 5, 2], M).
# M = 9.

# Single-element list:

# ?- maxlist([7], M).
# M = 7.

# List with negative numbers:

#     ?- maxlist([-4, -9, -2, -8], M).
#     M = -2.

