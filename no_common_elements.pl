%% no_common_elements(L1, L2) verifies that L1 and L2 have no common elements
no_common_elements([], _).
no_common_elements([H1|T1], L2) :- \+member(H1, L2),!,no_common_elements(T1, L2).
