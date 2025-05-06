% prolog program to implement palindrome(list)
% program checks whether given list is palindrome or not

palin([]) :- write('palindrome').
palin([_]) :- write('palindrome').

palin(L) :- 
	append([H|T],[H],L),
	palin(T);
	write('not a palindrome').


# 🔹 Description:

# This Prolog program defines palin(List) to check whether a given list is a palindrome (reads the same forward and backward).

#     A palindrome has the same elements from both ends.

#     It handles:

#         Empty list ([])

#         Single-element list ([_])

#     For longer lists:

#         Uses append/3 to strip matching first and last elements, and recursively checks the rest.

#         If mismatch occurs, prints "not a palindrome".

# 🧪 Sample Queries:

#     Even-length palindrome:

# ?- palin([1, 2, 3, 2, 1]).
# palindrome

# Odd-length palindrome:

# ?- palin([a, b, a]).
# palindrome

# Not a palindrome:

# ?- palin([1, 2, 3]).
# not a palindrome

# Empty list:

# ?- palin([]).
# palindrome