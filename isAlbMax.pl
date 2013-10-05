% A minMax tree is a binary tree in which nodes contains natural numbers
% such that the root and branch node cointain the max value of the leaves
% albmax verifies if a tree is an albmax tree

max(X, Y, X) :- X>=Y, !.
max(X, Y, Y) :- X<Y.

maxNode(void, tree(X, _, _), X) :- !.
maxNode(tree(X,_,_), void, X) :- !.
maxNode(tree(L,_, _), tree(R, _, _), Z) :- max(L,R,Z).

albmax(void) :- !.
albmax(tree(_, void, void)) :- !.
albmax(tree(X, Left, Right)) :- albmax(Left), albmax(Right), maxNode(Left, Right, X).
