<insert sort>
삽입정렬은 전통적인 정렬 알고리즘. 
삽입 정렬의 프롤로그 구현은 누산기개념을 기반함.

mysort(L,SL) :- setof(X, member(X,L), SL).
    insert_sort(List,Sorted):-i_sort(List,[],Sorted).
    i_sort([],Acc,Acc).
    i_sort([H|T],Acc,Sorted):-insert(H,Acc,NAcc),i_sort(T,NAcc,Sorted).
       
    insert(X,[Y|T],[Y|NT]):-X>Y,insert(X,T,NT).
    insert(X,[Y|T],[X,Y|T]):-X=<Y.
    insert(X,[],[X]).
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
%Queen(Country,Name)
queen('Denmark','MargretheII').
queen('GreatBritain','ElisabethII').
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
Prolog 삽입 정렬 알고리즘

sorting([A|B], Sorted) :- sorting(B, SortedTail), insert(A, SortedTail, Sorted).
sorting([], []).

insert(A, [B|C], [B|D]) :- A @> B, !, insert(A, C, D).
insert(A, C, [A|C]).

> 결과 
?- sorting([5, 4, 9, 1, 3, 8], X).
X = [1, 3, 4, 5, 8, 9].

>결과1
?- sorting([2, 5, [5, 4, 3], [6, 3], 4, 8], X).
X = [2, 4, 5, 8, [3, 4, 5], [3, 6]].
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

정렬된 목록에 요소 삽입
insert(X, [], [X]):- !.
insert(X, [X1|L1], [X, X1|L1]):- X=<X1, !.
insert(X, [X1|L1], [X1|L]):- insert(X, L1, L).

삽입 정렬 알고리즘 사용
insertionSort([], []):- !.
insertionSort([X|L], S):- insertionSort(L, S1), insert(X, S1, S).
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

list_insert(11, 33, 23, 45, 13, 25, 8, 135) :-
list_delete(11, 33, 23, 45, 13, 25, 135, 8).

list_delete(A, [A|B], B)
list_delete(A, [B|C], [B|D]) :-
    list_delete(A,C,D).
    
?- list_delete(a,[b,c,d],L).
?- list_delete(a,[b,a,c,d],L).

L = [11, 8, 13, 23, 25, 33, 45, 135] ?
?- 
list_insert (a,[11, 33, 23, 45, 13, 25, 8, 135],L).

L = [11, 33, 23, 45, 13, 25, 8, 135]
L = [11, 23, 33, 45, 13, 25, 8, 135]
L = [11, 23, 33, 13, 45, 25, 8, 135]
L = [11, 23, 13, 33, 45, 25, 8, 135]
L = [11, 13, 23, 33, 45, 25, 8, 135]
L = [11, 13, 23, 33, 25, 45, 8, 135]
L = [11, 13, 23, 25, 33, 45, 8, 135]
L = [11, 13, 23, 25, 33, 8, 45, 135]
L = [11, 13, 23, 8, 25, 33, 45, 135]
L = [11, 13, 8, 23, 25, 33, 45, 135]
L = [11, 8, 13, 23, 25, 33, 45, 135]
L = [8, 11, 13, 23, 25, 33, 45, 135]


insert_sort :- write('11 33 23 45 13 25 8 135').
:- insert_sort.

