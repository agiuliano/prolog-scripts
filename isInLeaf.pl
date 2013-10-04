% Given a tree and a value
% isInLeaf verify that the value is in at least one leaf of the tree
isInLeaf(tree(X, void, void), X) :- !. 

isInLeaf(tree(_, L, _), Y) :- isInLeaf(L, Y),!.
isInLeaf(tree(_, _, R), Y) :- isInLeaf(R, Y).

