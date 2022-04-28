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
