valid([]).
valid([Head|Tail]) :-
    fd_all_different(Head),
    valid(Tail).

sudoku(Input, Solution) :-
    Solution = Input,
    Input =
    [A11, A12, A13, B14, B15, B16, C17, C18, C19,
     A21, A22, A23, B24, B25, B26, C27, C28, C29,
     A31, A32, A33, B34, B35, B36, C37, C38, C39,
     D41, D42, D43, E44, E45, E46, F47, F48, F49,
     D51, D52, D53, E54, E55, E56, F57, F58, F59,
     D61, D62, D63, E64, E65, E66, F67, F68, F69,
     G71, G72, G73, H74, H75, H76, I77, I78, I79,
     G81, G82, G83, H84, H85, H86, I87, I88, I89,
     G91, G92, G93, H94, H95, H96, I97, I98, I99],
    fd_domain(Input, 1, 9),

    Row1 = [A11, A12, A13, B14, B15, B16, C17, C18, C19],
    Row2 = [A21, A22, A23, B24, B25, B26, C27, C28, C29],
    Row3 = [A31, A32, A33, B34, B35, B36, C37, C38, C39],
    Row4 = [D41, D42, D43, E44, E45, E46, F47, F48, F49],
    Row5 = [D51, D52, D53, E54, E55, E56, F57, F58, F59],
    Row6 = [D61, D62, D63, E64, E65, E66, F67, F68, F69],
    Row7 = [G71, G72, G73, H74, H75, H76, I77, I78, I79],
    Row8 = [G81, G82, G83, H84, H85, H86, I87, I88, I89],
    Row9 = [G91, G92, G93, H94, H95, H96, I97, I98, I99],

    Col1 = [A11, A21, A31, D41, D51, D61, G71, G81, G91],
    Col2 = [A12, A22, A32, D42, D52, D62, G72, G82, G92],
    Col3 = [A13, A23, A33, D43, D53, D63, G73, G83, G93],
    Col4 = [B14, B24, B34, E44, E54, E64, H74, H84, H94],
    Col5 = [B15, B25, B35, E45, E55, E65, H75, H85, H95],
    Col6 = [B16, B26, B36, E46, E56, E66, H76, H86, H96],
    Col7 = [C17, C27, C37, F47, F57, F67, I77, I87, I97],
    Col8 = [C18, C28, C38, F48, F58, F68, I78, I88, I98],
    Col9 = [C19, C29, C39, F49, F59, F69, I79, I89, I99],

    Square1 = [A11, A12, A13, A21, A22, A23, A31, A32, A33],
    Square2 = [B14, B15, B16, B24, B25, B26, B34, B35, B36],
    Square3 = [C17, C18, C19, C27, C28, C29, C37, C38, C39],
    Square4 = [D41, D42, D43, D51, D52, D53, D61, D62, D63],
    Square5 = [E44, E45, E46, E54, E55, E56, E64, E65, E66],
    Square6 = [F47, F48, F49, F57, F58, F59, F67, F68, F69],
    Square7 = [G71, G72, G73, G81, G82, G83, G91, G92, G93],
    Square8 = [H74, H75, H76, H84, H85, H86, H94, H95, H96],
    Square9 = [I77, I78, I79, I87, I88, I89, I97, I98, I99],
    
    valid([Row1, Row2, Row3, Row4, Row5, Row6, Row7, Row8, Row9,
	   Col1, Col2, Col3, Col4, Col5, Col6, Col7, Col8, Col9,
	   Square1, Square2, Square3, Square4, Square5, Square6, Square7, Square8, Square9]).

print_solution_counted([], _).
print_solution_counted([Head|Tail], Count) :- #=(0, Count rem 9), format('  ~d~n', [Head]), print_solution_counted(Tail, Count + 1).
print_solution_counted([Head|Tail], Count) :- format('  ~d', [Head]), print_solution_counted(Tail, Count + 1).

print_solution(Solution) :- print_solution_counted(Solution, 1).
