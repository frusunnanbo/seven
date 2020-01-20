not_on_same(Row1, Col1, Row2, Col2) :- dist(Row1, Row2) #\= dist(Col1, Col2). 

none_on_same(Row1, Col1, Row2, Col2, []) :- not_on_same(Row1, Col1, Row2, Col2).
none_on_same(Row1, Col1, Row2, Col2, [Head|Tail]) :- not_on_same(Row1, Col1, Row2, Col2), none_on_same(Row1, Col1, Head, Col2 + 1, Tail).

none_on_same_diagonal_index(_, _, []).
none_on_same_diagonal_index(Row, Column, [Head|Tail]) :- none_on_same(Row, Column, Head, Column + 1, Tail), none_on_same_diagonal_index(Head, Column + 1, Tail).

none_on_same_diagonal([Head|Tail]) :- none_on_same_diagonal_index(Head, 1, Tail).

all_in_valid_range([], _).
all_in_valid_range([Head|Tail], Range) :- member(Head, Range), all_in_valid_range(Tail, Range).

queens(Solution) :-
    length(Solution, 8), 
    fd_all_different(Solution),
    all_in_valid_range(Solution, [1, 2, 3, 4, 5, 6, 7, 8]),
    none_on_same_diagonal(Solution).
