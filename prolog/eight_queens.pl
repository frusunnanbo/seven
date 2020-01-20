queens(Solution) :-
    Solution = [A, B, C, D, E, F, G, H],
    fd_domain(Solution, 1..8),
    fd_all_different(Solution).
