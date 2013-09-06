% Consider trees whose nodes are labeled with positive integers.
% Write a program that given such a tree as input, verifies that 
% it is a binary search tree. A binary search tree is a tree where 
% the value of each node is greater than the value of the left child 
% and smaller or equal to the value of the right child. 
% The algorithm must be able to handle unbalanced trees and void trees


searchtree(void).
searchtree(tree(_, void, void)).
searchtree(tree(X, void, Dx)) :- smaller(X, Dx), searchtree(Dx).
searchtree(tree(X, Sx, void)) :- greater(X, Sx), searchtree(Sx).
searchtree(tree(X, Sx, Dx)) :- greater(X, Sx), smaller(X, Dx), searchtree(Sx), searchtree(Dx).

smaller(X, tree(Y,_,_)) :- X =< Y.
greater(X, tree(Y,_,_)) :- X > Y.
