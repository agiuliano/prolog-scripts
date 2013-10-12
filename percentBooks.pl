% Given a book list such as book(Title, Author_list, Pages, ISBN)
% write a function that return the percentage of books written by a given author
% with other authors (than the total books written by the author)

percent(Books, Author, P) :- countMemberAuthor(Books, Author, M), countSingleAuthor(Books, Author, S), M2 is M-S, P is (M2/M)*100.


countSingleAuthor([], _, 0).
countSingleAuthor([Book], Author, 1) :- isTheOnlyAuthor(Book, Author),!.
countSingleAuthor([H|T], Author, Count) :- isTheOnlyAuthor(H, Author),!,countSingleAuthor(T, Author, X), Count is X + 1.
countSingleAuthor([_|T], Author, Count) :- countSingleAuthor(T, Author, Count).

countMemberAuthor([],_,0).
countMemberAuthor([Book], Author, 1) :- isAMemberAuthor(Book, Author),!.
countMemberAuthor([H|T], Author, Count) :- isAMemberAuthor(H, Author),!,countMemberAuthor(T, Author, X), Count is X + 1.
conuntMemberAuthor([_|T], Author, Count) :- countMemberAuthor(T, Author, Count).

isTheOnlyAuthor(libro(_, [Author],_,_), Author) :- !.
isAMemberAuthor(libro(_, Authors,_,_), Author) :- member(Author, Authors),!.
