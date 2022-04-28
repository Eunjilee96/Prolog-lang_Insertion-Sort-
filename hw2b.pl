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
      
      
show(N, Options) :-
        N #> 0,
        n_queens(N, Qs),
        phrase(postscript, Ps),
        format("~s ~w init\n", [Ps,N]),
        animate(Qs),
        labeling(Options, Qs),
        get_single_char(_),
        false.
show(_, _ ) :- halt.


