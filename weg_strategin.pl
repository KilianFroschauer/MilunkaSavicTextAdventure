% ==========================================
% KAPITEL 4 - DEIN WEG IM KRIEG: STRATEGIN
% ==========================================

pfad_strategin :-
    nl,
    write('=================================================='), nl,
    write('||   KAPITEL 4 - DEIN WEG IM KRIEG: STRATEGIN   ||'), nl,
    write('=================================================='), nl,
    nl,
    write('Du uebernimmst eine kleine Einheit. Die Verantwortung lastet schwer auf deinen Schultern.'), nl,
    write('Die Maenner und Frauen unter deinem Kommando blicken zu dir auf, voller Hoffnung und Zweifel.'), nl,
    frage_hinterhalt_entscheidung.

frage_hinterhalt_entscheidung :-
    write('------------------------------------------'), nl,
    write('Deine erste Mission: ein geplanter Hinterhalt. Die Nacht ist dunkel, das Adrenalin steigt.'), nl,
    write('Der Hinterhalt ist vorbereitet. Die Nacht ist still, die Spannung greifbar. Wie fuehrst du deine Einheit an?'), nl,
    nl,
    write('  1) Du setzt auf eine aggressive Taktik, die auf Ueberraschung und schnellen Zugriff abzielt.'), nl,
    write('  2) Du waehlst einen vorsichtigeren Ansatz, der darauf abzielt, Risiken zu minimieren, auch wenn dies die Erfolgschancen schmaelert.'), nl,
    nl,
    write('-> Deine Wahl (1/2): '),
    read(H),
    process_hinterhalt_entscheidung_wahl(H).

process_hinterhalt_entscheidung_wahl(1) :-
    write('Du wirst als brillante Taktikerin gefeiert. Deine Kameraden vertrauen dir mehr denn je.'), nl,
    nl,
    frage_strategin_taktik_entscheidung.
process_hinterhalt_entscheidung_wahl(2) :-
    write('Deine Truppe erleidet Verluste. Man zweifelt an dir, und du zweifelst an dir selbst.'), nl,
    nl,
    frage_strategin_taktik_entscheidung.
process_hinterhalt_entscheidung_wahl(_) :-
    write('Ungueltige Eingabe. Bitte gib 1 oder 2 ein.'), nl,
    frage_hinterhalt_entscheidung.

frage_strategin_taktik_entscheidung :-
    write('------------------------------------------'), nl,
    write('Die naechste strategische Entscheidung steht an. Der Feind formiert sich, und die Lage ist unuebersichtlich. Welchen Weg schlaegst du ein?'), nl,
    nl,
    write('  1) Du befiehlst einen kuehnen Vorstoss, um die Initiative zu ergreifen und den Feind zu ueberrumpeln.'), nl,
    write('  2) Du laesst deine Truppen defensive Stellungen beziehen, um Kraefte zu schonen und den Feind kommen zu lassen.'), nl,
    nl,
    write('-> Deine Wahl (1/2): '),
    read(A),
    process_strategin_taktik_entscheidung_wahl(A).

process_strategin_taktik_entscheidung_wahl(1) :-
    frage_angriff_ausgang.
process_strategin_taktik_entscheidung_wahl(2) :-
    write('Du waehlst Defensive. Deine Truppe ueberlebt, aber du bekommst keinen Ruhm. Doch du hast Leben gerettet.'), nl,
    nl,
    frage_strategin_letzte_schlacht_entscheidung.
process_strategin_taktik_entscheidung_wahl(_) :-
    write('Ungueltige Eingabe. Bitte gib 1 oder 2 ein.'), nl,
    frage_strategin_taktik_entscheidung.

frage_angriff_ausgang :-
    write('------------------------------------------'), nl,
    write('Der Angriff rollt. Rauch und Laerm erfuellen das Schlachtfeld. Das Schicksal deiner Einheit und dein eigenes haengen am seidenen Faden. Welches Bild praegt sich ein?'), nl,
    nl,
    write('  1) Deine Truppen durchbrechen die feindlichen Linien, ein entscheidender Sieg zeichnet sich ab.'), nl,
    write('  2) Der Widerstand ist zaeher als erwartet, deine Einheit geraet unter schweren Beschuss und droht aufgerieben zu werden.'), nl,
    nl,
    write('-> Deine Wahl (1/2): '),
    read(Res),
    process_angriff_ausgang_wahl(Res).

process_angriff_ausgang_wahl(1) :-
    strategin_genie.
process_angriff_ausgang_wahl(2) :-
    strategin_degradiert.
process_angriff_ausgang_wahl(_) :-
    write('Ungueltige Eingabe. Bitte gib 1 oder 2 ein.'), nl,
    frage_angriff_ausgang.

strategin_genie :-
    write('Dein Name steht fuer strategische Genialitaet. Du wirst zum Vorbild fuer kommende Generationen.'), nl,
    nl,
    frage_strategin_letzte_schlacht_entscheidung.

strategin_degradiert :-
    write('Du wirst fuer das Scheitern zur Verantwortung gezogen. Die Last der Niederlage bleibt.'), nl,
    nl,
    frage_strategin_letzte_schlacht_entscheidung.

frage_strategin_letzte_schlacht_entscheidung :-
    write('------------------------------------------'), nl,
    write('Es ist die letzte grosse Schlacht. Das Schicksal des Krieges und vieler Leben liegt in deiner Hand. Welchen Weg nimmst du im Angesicht des Endes?'), nl,
    nl,
    write('  1) Du fuehrst deine Truppen mit letzter Kraft und Entschlossenheit, bereit, alles fuer den Sieg und die Zukunft zu geben.'), nl,
    write('  2) Du erkennst die Uebermacht des Feindes und versuchst, einen ehrenvollen Rueckzug anzutreten, um so viele Leben wie moeglich zu retten.'), nl,
    nl,
    write('-> Deine Wahl (1/2): '),
    read(F),
    process_strategin_letzte_schlacht_entscheidung_wahl(F).

process_strategin_letzte_schlacht_entscheidung_wahl(1) :-
    strategin_ueberlebt.
process_strategin_letzte_schlacht_entscheidung_wahl(2) :-
    strategin_gefallen.
process_strategin_letzte_schlacht_entscheidung_wahl(_) :-
    write('Ungueltige Eingabe. Bitte gib 1 oder 2 ein.'), nl,
    frage_strategin_letzte_schlacht_entscheidung.

strategin_ueberlebt :-
    write('Du wirst verehrt, doch stirbst einsam, dein Leben dem Krieg gewidmet. Deine Taten leben in den Geschichtsbuechern weiter.'), nl,
    halt.

strategin_gefallen :-
    write('Du stirbst auf dem Schlachtfeld. Dein Name lebt weiter als Heldin. Generationen werden sich an deinen Mut erinnern.'), nl,
    halt.