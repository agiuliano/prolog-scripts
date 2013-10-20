
palindrome(List) :- accRev(List, [], List).

accRev(L1, L2) :-  accRev(L1, [], L2).
accRev([],List,List).
accRev([H|T], Acc, Rev) :- accRev(T, [H|Acc], Rev).
