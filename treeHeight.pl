% The height of a tree is the height of the root node. 
% The height of a non-leaf node is the maximum of the heights of its child nodes plus one. 
% Finally, a void tree has height zero.
% A balanced binary tree is a tree where each node has both children of the same height. 
% Write a prolog Program that, given a binary tree, evaluates to false 
% if the tree is not balanced, and returns the height of the tree if it is balanced.

balanced(void, 0) :- !.
balanced(tree(_, L, R), S) :- balanced(L, Height), balanced(R, Height), S is Height+1.
