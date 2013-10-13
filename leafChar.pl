% Considering a binary tree in which nodes contain characters.
% Given a tree, leafChar returns the list of the characters
% contained in the leaf nodes.

leafChar(tree(Char, void, void), [Char]) :- !.
leafChar(tree(_, L, void), Lc) :- leafChar(L, Lc), !.
leafChar(tree(_, void, R), Rc) :- leafChar(R, Rc), !.


leafChar(tree(_, L, R), ResList) :- leafChar(L, Lc), leafChar(R, Rc), append(Lc, Rc, ResList). 
