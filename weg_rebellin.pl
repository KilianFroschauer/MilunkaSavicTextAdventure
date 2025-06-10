% ==========================================
% KAPITEL 4 - DEIN WEG IM KRIEG: REBELLIN
% ==========================================

pfad_rebellin :-
    nl,
    write('=================================================='), nl,
    write('||   KAPITEL 4 - DEIN WEG IM KRIEG: REBELLIN    ||'), nl,
    write('=================================================='), nl,
    nl,
    write('Du stellst Befehle in Frage und kaempfst fuer Gerechtigkeit.'), nl,
    frage_rebellin_ziel.

frage_rebellin_ziel :-
    write('------------------------------------------'), nl,
    write('Deine Rebellion braucht ein klares Ziel. Gegen wen richtest du deine Aktionen?'), nl,
    write('  1) Du konzentrierst deine Angriffe auf den aeusseren Feind und fuehrst klassische Widerstandsaktionen durch.'), nl,
    write('  2) Du wendest dich gegen Ungerechtigkeit und Korruption in den eigenen Reihen und sabotierst interne Strukturen.'), nl,
    nl,
    write('-> Deine Wahl (1/2): '),
    read(Ziel),
    process_rebellin_ziel_wahl(Ziel).

process_rebellin_ziel_wahl(1) :-
    write('Du greifst feindliche Stellungen an. Du wirst zur Ikone des Widerstands.'), nl,
    nl,
    frage_rebellin_letzte_schlacht.
process_rebellin_ziel_wahl(2) :-
    write('Du sabotierst korrupte Offiziere. Deine Armee jagt dich als Verraterin.'), nl,
    nl,
    frage_rebellin_letzte_schlacht.
process_rebellin_ziel_wahl(_) :-
    write('Ungueltige Eingabe. Bitte gib 1 oder 2 ein.'), nl,
    frage_rebellin_ziel. % Re-ask this specific question

frage_rebellin_letzte_schlacht :-
    write('------------------------------------------'), nl,
    write('Die letzte Schlacht deiner Bewegung steht bevor. Der Ausgang ist ungewiss. Wie gehst du mit dieser entscheidenden Konfrontation um?'), nl,
    write('  1) Du kaempfst bis zum aeussersten, auch wenn die Chancen schlecht stehen, und versuchst, einen Weg ins Exil zu finden, um den Kampf von dort fortzusetzen.'), nl,
    write('  2) Du stellst dich der uebermacht und kaempfst wissend, dass dies dein Ende bedeuten koennte, aber dein Opfer zum Symbol des Widerstands wird.'), nl,
    nl,
    write('-> Deine Wahl (1/2): '),
    read(F),
    process_rebellin_letzte_schlacht_wahl(F).

process_rebellin_letzte_schlacht_wahl(1) :-
    rebellin_exil.
process_rebellin_letzte_schlacht_wahl(2) :-
    rebellin_legend.
process_rebellin_letzte_schlacht_wahl(_) :-
    write('Ungueltige Eingabe. Bitte gib 1 oder 2 ein.'), nl,
    frage_rebellin_letzte_schlacht. % Re-ask this specific question

rebellin_exil :-
    write('Im Exil bleibst du arm, aber deine Geschichte inspiriert viele.'), nl,
    halt.

rebellin_legend :-
    write('Du wirst hingerichtet. Dein Mut lebt als Legende weiter.'), nl,
    halt.