% Consider a binary tree in which nodes contains char.
% leafList is a Prolog program that generate a list
% containing all the characters in the leaf nodes

leafList(void, []).
leafList(tree(X,void,void), [X]) :- !.
leafList(tree(_,Left,Right),Res) :- leafList(Left,L),leafList(Right,R), append(L,R,Res).
