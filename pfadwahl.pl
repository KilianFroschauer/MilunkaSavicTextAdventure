% ==========================================
% KAPITEL 3 - DEINE ROLLE IM KRIEG
% ==========================================

pfadwahl :-
    nl,
    write('=================================================='), nl,
    write('||       KAPITEL 3 - DEINE ROLLE IM KRIEG       ||'), nl,
    write('=================================================='), nl,
    nl,
    write('Nach Wochen voller Entbehrungen und Mutproben stehst du an einem Scheideweg.'), nl,
    write('Deine bisherigen Entscheidungen haben dich gepraegt. Jetzt musst du deinen Platz im Krieg finden.'), nl,
    write('Welchen Weg willst du nun einschlagen?'), nl,
    write('------------------------------------------'), nl,
    write('  1) STRATEGIN     - Fuehre Truppen und entwickle Kriegsplaene. Du uebernimmst Verantwortung fuer das Leben anderer.'), nl,
    write('  2) BESCHUETZERIN - Hilf Verwundeten und Zivilisten. Dein Mitgefuehl ist deine groesste Staerke.'), nl,
    write('  3) REBELLIN      - Kaempfe gegen Unterdrueckung und Korruption. Du stellst dich gegen Unrecht, egal woher es kommt.'), nl,
    nl,
    write('-> Deine Wahl (1/2/3): '),
    read(P),
    pfadwahl_dispatch(P).

pfadwahl_dispatch(1) :- pfad_strategin.
pfadwahl_dispatch(2) :- pfad_beschuetzerin.
pfadwahl_dispatch(3) :- pfad_rebellin.
pfadwahl_dispatch('1') :- pfad_strategin.
pfadwahl_dispatch('2') :- pfad_beschuetzerin.
pfadwahl_dispatch('3') :- pfad_rebellin.
pfadwahl_dispatch(_) :-
    write('Ungueltige Eingabe. Bitte gib 1, 2 oder 3 ein.'), nl,
    pfadwahl.