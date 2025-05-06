/* 
	Prolog program to insert_nth(item,n,into_list,result)
that asserts the result is list into_list with item
inserted at nth  element into every list at all level.
*/

insert(Element,Pos,[X|Tail],[X|RTail]) :- 
	Pos>1,
	Pos1 is Pos-1,
	insert(Element,Pos1,Tail,RTail).

insert(Element,1,Tail,RTail) :- append([Element],Tail,RTail).
% append  perform the below task
%	Rtail = [Element|Tail]
/*	
	which then RTail joined to the X(head of the list) 
	note :  head can be empty (i.e., [] )
*/
% end of the program.



# 🔹 Description:

# This Prolog program defines insert(Element, Pos, List, Result) to insert an element at the N-th position in a flat list.

#     insert(Element, 1, Tail, [Element|Tail]): base case — inserts at position 1.

#     The recursive case walks down the list, decrementing Pos and rebuilding the list with unchanged heads until the insertion point is reached.

# ❗️Important:

# Despite the comment, this program only works for flat lists, not nested levels. The actual goal of “insert at N-th position at every level” is not implemented in the current version.


# 🧪 Sample Queries:

#     Insert 'z' at 2nd position:

# ?- insert(z, 2, [a,b,c], R).
# R = [a, z, b, c].

# Insert at first position:

# ?- insert(10, 1, [20,30], R).
# R = [10, 20, 30].

# Insert in empty list:

# ?- insert(x, 1, [], R).
# R = [x].

# Failing case (position too large):

#     ?- insert(x, 5, [a,b], R).
#     false.

