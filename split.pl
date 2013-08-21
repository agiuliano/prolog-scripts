%% Write a predicate split/3 that splits a list of integers 
%% into two lists: one containing the positive ones (and zero),
%% the other containing the negative ones. For example:
%% split([3,4,-5,-1,0,4,-9],P,N) should return:
%% P = [3,4,0,4]
%% N = [-5,-1,-9].


split([],[],[]).
split([H|T], [H|P], N) :- H >= 0,!,split(T, P, N).
split([H|T], P, [H|N]) :- split(T, P, N).
