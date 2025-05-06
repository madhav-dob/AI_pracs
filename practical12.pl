/* prolog program to implement 
	sumlist(List,Sum) so that Sum is the sum of
	the given list of numbers List 
*/

sumlist([],0).

sumlist([H|T],Sum) :- 
		sumlist(T,Sum1),
		Sum is Sum1+H.	


# ChatGPT said:
# 🔹 Description:

# This Prolog program defines sumlist(List, Sum), which computes the sum of all elements in a given list of numbers.

#     It uses recursion:

#         The base case states that the sum of an empty list is 0.

#         The recursive case adds the head H of the list to the sum of the tail T.

# 🧪 Sample Queries:

#     Sum of a list of integers:

# ?- sumlist([1,2,3,4], S).
# S = 10.

# Empty list:

# ?- sumlist([], S).
# S = 0.

# List with negative numbers:

# ?- sumlist([10, -5, 3], S).
# S = 8.

# Floating point numbers:

# ?- sumlist([1.5, 2.5, 3.0], S).
# S = 7.0.
