% Given a complete binary tree in which each node is labeled with a list of integer
% treeTotal return the tree with the node is labeled with the sum of the list

treeTotal(void, void).
treeTotal(tree(List, Left, Right), tree(Total, TotalLeft, TotalRight)) :- 
	sum(List, Total), treeTotal(Left, TotalLeft), treeTotal(Right, TotalRight).

sum([], 0).
sum([H|T], Total) :- sum(T, Z), Total is H+Z. 
