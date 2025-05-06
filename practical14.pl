/* 
	prolog program to implement 
	reverse(List,ReverseList)
	so that ReverseList is the reverse of the List.
*/

/*
reverse([H|T],[RH|RT]) :-
	length(T,L),
	L>0 -> 
	(
		reverse(T,RH),
		(
			RT is H
		)
	);
	RT is H.

	
*/

reverse(List,ReverseList) :-
	reverse(List,ReverseList,[]).
	
reverse([H|T],List,RecRvList) :-
	reverse(T,List,[H|RecRvList]).
	
reverse([],L,L).


# 🔹 Description:

# This Prolog program implements reverse(List, ReverseList) to compute the reverse of a list, using an accumulator-based recursive approach for efficiency.

#     The main predicate reverse(List, ReverseList) acts as a wrapper.

#     The helper predicate reverse/3 uses an accumulator (RecRvList) to build the reversed list efficiently.

#     The commented-out version is syntactically incorrect and logically flawed — the working version is the one with the accumulator.


# ✅ How It Works:

# reverse([H|T], List, RecRvList) :-
#     reverse(T, List, [H|RecRvList]).

# reverse([], L, L).

#     Recursively peels the head of the list and prepends it to the accumulator.

#     Once the input list is empty, the accumulator holds the reversed list.


# 🧪 Sample Queries:

#     Basic reversal:

# ?- reverse([1,2,3,4], R).
# R = [4,3,2,1].

# Single element:

# ?- reverse([42], R).
# R = [42].

# Empty list:

# ?- reverse([], R).
# R = [].

# Reversing a list with strings or atoms:

# ?- reverse([a, b, c], R).
# R = [c, b, a].
