mysort(L,SL) :- setof(X, member(X,L), SL).

%Queen(Country,Name)
queen('Denmark','MargretheII').
queen('GreatBritain','ElisabethII').

%King(Country,Name)
king('Sweden','KarlXVIGustav').
king('Norway','HaraldV').
king('Russia', 'Vladimir').
