% prolog program to remove-nth(Before, After) that 
% asserts that After list is Before list with removal 
% of every nth item from every list at all level. 


delnth(1,[_|T],T).
delnth(Pos,[X|Y],[X|T]) :-
	Pos1 is Pos-1,
	delnth(Pos1,Y,T).

remove4th(Before,After) :-
	delnth(4,Before,After).


# 🔹 Description:

# This Prolog program defines a mechanism to remove the N-th element from a list, and provides a specific version remove4th/2 to remove the 4th element from a given list.

#     delnth(N, Before, After):

#         Removes the N-th element from the Before list and returns the After list.

#         The base case (N = 1) skips the head.

#         The recursive case retains the head and decrements the position.

#     remove4th(Before, After) is a helper that removes only the 4th element.

#     🔸 Note: The code currently removes the N-th element at the top level only. It does not handle nested lists or recursively remove N-th items at all levels, contrary to the comment.

# 🧪 Sample Queries:

#     Remove 4th element from a list:

# ?- remove4th([a,b,c,d,e,f], R).
# R = [a, b, c, e, f].

# Remove 4th from a short list:

# ?- remove4th([1,2,3], R).
# false.  % because list is shorter than 4 elements

# Generic N-th removal:

# ?- delnth(2, [10, 20, 30, 40], R).
# R = [10, 30, 40].
