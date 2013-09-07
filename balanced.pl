% Write a prolog function that given a tree
% Tell wheter the given tree is a balanced one

balanced(tree(_, void, void), 1).
balanced(tree(_, Left, Right), X) :- balanced(Left, Y), balanced(Right, Y),X is Y+1,!.
                        

