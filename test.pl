

test(Tree, Repeated) :- test(Tree, [], Repeated).

test(void, _, []).

test(tree(Value, _,_), Visited, [[Value|Visited]]) :- member(Value, Visited), !.
test(tree(Value, Left, Right), Visited, Repeated) :- 
	\+member(Value, Visited), 
	test(Left, [Value|Visited], LeftR), 
	test(Right, [Value|Visited], RightR),
	append(LeftR, RightR, Repeated). 	
