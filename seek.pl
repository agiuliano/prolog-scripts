% Write a Prolog program that given one robot
% verifies if there is a flying robot within a given distance.
% You can assume that the graph is available in the knowledge base


edge(robot(a, flying), robot(b, wheeled), 2).
edge(robot(b, wheeled), robot(d, wheeled), 3).
edge(robot(d, wheeled), robot(a, flying), 1).
edge(robot(c, tracked), robot(a, flying), 6).
edge(robot(d, wheeled), robot(c, tracked), 5).

seek(robot(_, flying), _).
seek(robot(R1,T1), MAX_DIST) :- edge(robot(R1,T1), robot(R2,T2), PathLen), MAX_DIST - PathLen >= 0,!, seek(robot(R2,T2), MAX_DIST - PathLen),!.
