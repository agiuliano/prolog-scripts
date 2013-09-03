% Giving a *tran/2* knowledge base
% Write a predicate listtran(G,E)
% which translates a list of Italian numerals
% into the corresponding list of English ones


tran(uno, one).
tran(due, two).
tran(tre, three).
tran(quattro, four).
tran(cinque, five). 
tran(sei, six).
tran(sette, seven).
tran(otto, eight).
tran(nove, nine).

listtran([], []).
listtran([Hi|Ti], [He|Te]) :- tran(Hi, He), listtran(Ti, Te).
