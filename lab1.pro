implement main
    open core, console

domains
    sport = voleyball; football.

class facts
    woman : (string Name).
    man : (string Name).
    igraet : (string Name, sport Sport).
    voleyball_woman : (string Name).

clauses
    igraet("anton", voleyball()).
    igraet("olga", voleyball()).
    igraet("sasha", voleyball()).
    igraet("andrei", football()).
    igraet("andrei", voleyball()).
    woman("olga").
    man("andrei").
    man("sasha").

class predicates
    %igraet : (string Name, sport Sport) nondeterm anyflow.
    %voleyballgayming : (string Name, sport Sport).
    andrewgaimig : () failure.
    voleyballgaimig : () failure.
    olgaandsashagaiming : () failure.
    footballandvoleyballgaiming : () failure.
    voleyball_woman : () failure.

clauses
    andrewgaimig() :-
        igraet("andrei", Y),
        !,
        write(Y),
        nl,
        fail.
    voleyballgaimig() :-
        igraet(X, voleyball()),
        !,
        write(X),
        nl,
        fail.
    olgaandsashagaiming() :-
        igraet("olga", Y),
        igraet("sasha", Y),
        !,
        write(Y),
        nl,
        fail.
    footballandvoleyballgaiming() :-
        igraet(X, voleyball()),
        igraet(X, football()),
        !,
        write(X),
        nl,
        fail.
    voleyball_woman() :-
        igraet(X, Y),
        woman(X),
        !,
        write(X),
        nl,
        fail.

clauses
 run() :-
        andrewgaimig(),
        fail.
        %olgaandsashagaiming().
    run() :-
        footballandvoleyballgaiming(),
        fail.
    run() :-
        voleyball_woman(). % вызываем "функцию"
        %voleyballgaimig().
    run() :-
        succeed.
        %run().

end implement main

goal
    console::run(main::run).
