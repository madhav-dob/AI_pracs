/*
	prolog program to implement two predicate
	evenlength(List) and oddlength(List) 
	so that they are true if their argument list 
	is of even length or odd length respectively.
*/

evenlength(List) :-
	length(List,L),
	R is mod(L,2),
	R is 0.
	
oddlength(List) :- 
	length(List,L),
	R is mod(L,2),
	R is 1.
	


# 🔹 Description:

# This Prolog program defines two predicates:

#     evenlength(List): Succeeds if the list has an even number of elements.

#     oddlength(List): Succeeds if the list has an odd number of elements.

# It uses the built-in length/2 predicate to get the length of the list and checks whether it's even or odd using mod/2.

# 🧪 Sample Queries:

#     Even-length list:

# ?- evenlength([1,2,3,4]).
# true.

# Odd-length list:

# ?- oddlength([a,b,c]).
# true.

# Empty list (length 0 is even):

# ?- evenlength([]).
# true.

# Failing case:

# ?- oddlength([10, 20]).
# false.
