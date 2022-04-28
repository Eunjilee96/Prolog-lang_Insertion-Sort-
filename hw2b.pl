n_queens(N, Qs) :-
        length(Qs, N),
        Qs ins 1..N,
        safe_queens(Qs).

safe_queens([]).
safe_queens([Q|Qs]) :-
        safe_queens(Qs, Q, 1),
        safe_queens(Qs).

safe_queens([], _, _).
safe_queens([Q|Qs], Q0, D0) :-
        Q0 #\= Q,
        abs(Q0 - Q) #\= D0,
        D1 #= D0 + 1,
        safe_queens(Qs, Q0, D1).
 
 >예시 결과 
 ?- N=4,
 n_qeens(N,QS),
 labeling([], QS)
 
 ?- n-queen(10,X).
 X=[7,4,2,9,5,10,8,6,3,1].
 
  ?- n-queen(8,X).
 X=[4,2,7,3,6,8,5,1].
 
  ?- n-queen(10,X).
 X=[7,4,2,9,5,10,8,6,3|...].
 
 
