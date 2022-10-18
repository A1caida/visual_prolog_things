implement main
    open core, console

domains
    sport = skripka; gitara; plavanie; tenis.

class facts
    sport : (sport Sport).
    muz_instr : (sport Sport).
    uvlekaetca : (string Name, sport Sport).

clauses
    uvlekaetca("kolya", gitara()).
    uvlekaetca("olya", skripka()).
    uvlekaetca("dima", plavanie()).
    uvlekaetca("tanya", tenis()).
    sport(plavanie()).
    sport(tenis()).
    muz_instr(skripka()).
    muz_instr(gitara()).

class predicates
    sportsmen : () failure.
clauses
    sportsmen() :-
        sport(Y),
        uvlekaetca(X, Y),
        !,
        write(X),
        nl,
        fail.

clauses
    run() :-
        sportsmen().
    run().

end implement main

goal
    console::run(main::run).
