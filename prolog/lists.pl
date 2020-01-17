backwards([], []).
backwards([Head|Tail], Reversed) :- backwards(Tail, TailReversed), append(TailReversed, [Head], Reversed).

backacc([], Rev, Rev).
backacc([Head|Tail], Acc, Rev) :- backacc(Tail, [Head|Acc], Rev).

backwards2(List, Reversed) :- backacc(List, [], Reversed).

min_acc([], Min, Min).
min_acc([Head|Tail], Acc, Min) :- Acc < Head -> min_acc(Tail, Acc, Min) ; min_acc(Tail, Head, Min).

minimum([Head|Tail], Min) :- min_acc(Tail, Head, Min).

insert([], Element, [Element]).
insert([Head|Tail], Element, Result) :-
    Element < Head ->
	Result = [Element|[Head|Tail]] ;
    insert(Tail, Element, TailResult), Result = [Head|TailResult].

sort_acc([], Sorted, Sorted).
sort_acc([Head|Tail], Acc, Sorted) :- insert(Acc, Head, SortedAcc), sort_acc(Tail, SortedAcc, Sorted).

sort_list(List, Sorted) :- sort_acc(List, [], Sorted).
