% Given two vector of arbitrary length
% scalarProduct returns the scalar product of the two vectors

scalarProduct([], [], 0).
scalarProduct([H1|T1], [H2|T2], P) :- 
	X is H1*H2, scalarProduct(T1, T2, P2), P is X+P2.
