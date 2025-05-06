% Prolog program to remove nth item from the list

delnth(1,[_|T],T).

delnth(Pos,[X|Y],[X|T]) :-
	Pos>1,
	Pos1 is Pos-1,
	delnth(Pos1,Y,T).


# 🔹 Description:

# This Prolog program defines delnth(Pos, List, Result) to remove the N-th item (at position Pos) from a given list.

#     delnth(1, [_|T], T) — Base case: removing the first element.

#     delnth(Pos, [X|Y], [X|T]) — Recursive case:

#         Keeps the head X unchanged,

#         Decrements Pos and continues with the tail,

#         Ensures Pos > 1 to avoid applying base case prematurely.



# 🧪 Sample Queries:

#     Remove 3rd element:

# ?- delnth(3, [a,b,c,d,e], R).
# R = [a, b, d, e].

# Remove 1st element:

# ?- delnth(1, [10, 20, 30], R).
# R = [20, 30].

# Remove from a short list (too short):

# ?- delnth(5, [x,y], R).
# false.

# Remove last element:

# ?- delnth(4, [1,2,3,4], R).
# R = [1, 2, 3].
