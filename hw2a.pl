sorting([A|B], Sorted) :- sorting(B, SortedTail), insert(A, SortedTail, Sorted).
sorting([], []).

insert(A, [B|C], [B|D]) :- A @> B, !, insert(A, C, D).
insert(A, C, [A|C]).

> 결과 
?- sorting([11, 33, 23, 45, 13, 25, 8, 135], X).
X = [8, 11, 13, 23, 25, 33, 45, 135].

> 결과 
?- sorting([83, 72, 65, 54, 47, 33, 29, 11], X).
X = [11, 29, 33, 47, 54, 65, 72, 83].
