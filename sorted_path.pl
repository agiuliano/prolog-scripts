% Assume you have a graph that is encoded as a list
% of edges in your knowledge base. Each edge is a
% directed connection between two nodes identified 
% by an integer number. For example:

edge(1, 3).
edge(1, 2).
edge(2, 3).
edge(3, 4).
edge(4, 1).
edge(4, 2).

% Write a Prolog program that, given a start and a target node,
% finds a path such that all the nodes appear in incremental order.
% In the above example, [edge(1, 3), edge(3, 4)] is such a path, 
% while [edge(1, 3), edge(3, 4), edge(4, 2)] is not.

sorted_path(A, B, Result) :- path(A, B, Result), sorted(Result).

path(A, B, Result) :- path(A,B,[],Result).
path(A,B,_,[edge(A,B)]) :- edge(A,B).
path(A,B,Visited,[edge(A,Z)|Result]) :- edge(A,Z), \+member(Z,Visited),path(Z,B,[A|Visited],Result).

sorted([]).
sorted([edge(A, B)|Rest]) :- A =< B, sorted(Rest).
