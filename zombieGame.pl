road(terrain(1, free), terrain(2, free)).
road(terrain(2, free), terrain(1, free)).
road(terrain(2, free), terrain(3, free)) .
road(terrain(3, free), terrain(2, free)).
road(terrain(2, free), terrain(4, zombie)).
road(terrain(4, zombie), terrain(5, gold)).
road(terrain(3, free), terrain(5, gold)).

getPath(terrain(Id, Status), [Id|List]) :- getPath(terrain(Id, Status), [Id], List).

getPath(terrain(_, gold), _, []) :- !.
getPath(Node, Visited, [N|ResList]) :- road(Node, terrain(N, Type)), \+member(N, Visited), Type \= zombie, getPath(terrain(N, Type), [N|Visited], ResList), !.


rendPath(Node1, Node2) :- getPath(Node1, P1), getPath(Node2, P2), length(P1, Length), length(P2, Length). 
