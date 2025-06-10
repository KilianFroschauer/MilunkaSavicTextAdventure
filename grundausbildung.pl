% ==========================================
% KAPITEL 2 - GRUNDAUSBILDUNG UND DECKUNG
% ==========================================

grundausbildung_entscheidung :-
    nl,
    write('=================================================='), nl,
    write('||   KAPITEL 2 - GRUNDAUSBILDUNG UND DECKUNG    ||'), nl,
    write('=================================================='), nl,
    nl,
    write('Die Grundausbildung beginnt. Du musst dich beweisen. Die Tage sind lang, die Naechte kurz, und die Ausbilder kennen kein Erbarmen.'), nl,
    write('Du lernst, mit dem Gewehr umzugehen, im Gleichschritt zu marschieren und deine Gefuehle zu verbergen.'), nl,
    write('Die Grundausbildung ist hart und erbarmungslos. Jeder Rekrut wird genau beobachtet. Wie gehst du mit dieser Situation um?'), nl,
    write('  1) Du zeigst vollen Einsatz und versuchst, bei jeder Uebung herauszuragen, in der Hoffnung, positiv bemerkt zu werden.'), nl,
    write('  2) Du haeltst dich bedeckt, fuehrst Befehle praezise aus und versuchst, nicht weiter aufzufallen.'), nl,
    nl,
    write('-> Deine Wahl (1/2): '),
    read(Wahl),
    process_grundausbildung_wahl(Wahl).

% Predicates for handling choices in Kapitel 2

process_grundausbildung_wahl(1) :-
    frage_reaktion_offizier_beobachtung.

process_grundausbildung_wahl(2) :-
    write('Du bist ein Schatten unter vielen. Niemand schenkt dir besondere Aufmerksamkeit.'), nl,
    nl,
    integriert.

process_grundausbildung_wahl(_) :-
    write('Ungueltige Eingabe. Bitte gib 1 oder 2 ein.'), nl,
    grundausbildung_entscheidung. % Re-ask main chapter question

frage_reaktion_offizier_beobachtung :-
    write('Ein Offizier beobachtet dich genau. Du spuerst seinen Blick im Nacken. Wie reagierst du auf seine intensive Beobachtung?'), nl,
    write('  1) Du versuchst, dich unauffaellig zu verhalten und hoffst, seine Aufmerksamkeit nicht weiter zu erregen.'), nl,
    write('  2) Du erwiderst seinen Blick selbstbewusst und versuchst, keine Unsicherheit zu zeigen.'), nl,
    nl,
    write('-> Deine Wahl (1/2): '),
    read(E),
    process_reaktion_offizier_wahl(E).

process_reaktion_offizier_wahl(1) :-
    entscheidung_nach_enttarnung_angebot.

process_reaktion_offizier_wahl(2) :-
    integriert_mit_misstrauen.

process_reaktion_offizier_wahl(_) :-
    write('Ungueltige Eingabe. Bitte gib 1 oder 2 ein.'), nl,
    frage_reaktion_offizier_beobachtung.

entscheidung_nach_enttarnung_angebot :-
    nl,
    write('Du wirst unehrenhaft entlassen. Doch eine letzte, gefaehrliche Chance bietet sich dir: eine Mission zur Rettung von Zivilisten.'), nl,
    write('Nimmst du diese gefaehrliche Aufgabe an, um deine Ehre wiederherzustellen, oder ziehst du dich zurueck?'), nl,
    write('  1) Du ergreifst die Chance und stellst dich der Gefahr, um die Zivilisten zu retten.'), nl,
    write('  2) Du lehnst ab und akzeptierst dein Schicksal, auch wenn es bedeutet, in Ungnade zu fallen.'), nl,
    nl,
    write('-> Deine Wahl (1/2): '),
    read(R),
    process_rehabilitation_angebot_wahl(R).

process_rehabilitation_angebot_wahl(1) :-
    rehabilitiert.

process_rehabilitation_angebot_wahl(2) :-
    write('Du gehst unter, vergessen vom Krieg.'), nl,
    halt.

process_rehabilitation_angebot_wahl(_) :-
    write('Ungueltige Eingabe. Bitte gib 1 oder 2 ein.'), nl,
    entscheidung_nach_enttarnung_angebot.

rehabilitiert :-
    write('Deine Rettungsaktionen bringen dir Respekt. Du darfst zurueck. Die Kameraden sehen dich mit neuen Augen.'), nl,
    nl,
    pfadwahl.

integriert :-
    write('Du wirst als vorbildlicher Soldat akzeptiert. Deine Disziplin und dein Schweigen zahlen sich aus.'), nl,
    nl,
    pfadwahl.

integriert_mit_misstrauen :-
    write('Man traegt dir Misstrauen nach, aber du darfst bleiben. Die Unsicherheit bleibt dein Begleiter.'), nl,
    nl,
    pfadwahl.