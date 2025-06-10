% ==========================================
% KAPITEL 4 - DEIN WEG IM KRIEG: BESCHUETZERIN
% ==========================================

pfad_beschuetzerin :-
    nl,
    write('=================================================='), nl,
    write('|| KAPITEL 4 - DEIN WEG IM KRIEG: BESCHUETZERIN ||'), nl,
    write('=================================================='), nl,
    nl,
    write('Die Schreie der Verwundeten hallen ueber das Schlachtfeld. Du bist zur Stelle, wo andere wegsehen.'), nl,
    write('Mit zitternden Haenden und pochendem Herzen hilfst du Verwundeten und Zivilisten – auch wenn es gegen die Befehle geht.'), nl,
    write('Du siehst das Leid in den Augen der Menschen, die alles verloren haben. Kinder klammern sich an dich, Soldaten flehen um Wasser.'), nl,
    frage_feind_helfen.

frage_feind_helfen :-
    write('------------------------------------------'), nl,
    write('Eines Tages findest du einen schwer verwundeten Feind. Er liegt im Morast, das Gesicht bleich, das Bein von Granatsplittern zerfetzt.'), nl,
    write('Sein Atem geht stoessweise, und in seinen Augen liegt die Angst vor dem Tod. Um euch herum pfeifen Kugeln.'), nl,
    write('Wie entscheidest du dich in dieser lebensbedrohlichen Situation?'), nl,
    write('  1) Du entscheidest dich, dem verwundeten Feind zu helfen, trotz der Gefahr und der moeglichen Konsequenzen.'), nl,
    write('  2) Du befolgst strikt die militaerischen Anweisungen und laesst den Feind zurueck, um deine eigene Sicherheit und die deiner Kameraden nicht zu gefaehrden.'), nl,
    nl,
    write('-> Deine Wahl (1/2): '),
    read(E),
    process_feind_helfen_wahl(E).

process_feind_helfen_wahl(1) :-
    write('Du kniest dich zu ihm, reinigst seine Wunden und gibst ihm Wasser. Er fluestert ein schwaches "Danke".'), nl,
    write('Einige Kameraden beobachten dich mit Misstrauen, doch du spuerst, dass du das Richtige getan hast.'), nl,
    nl,
    frage_letzte_evakuierung.
process_feind_helfen_wahl(2) :-
    write('Du gehst weiter. Sein Blick verfolgt dich noch lange in deinen Traeumen.'), nl,
    write('Du wirst als diszipliniert angesehen, doch in deinem Inneren bleibt eine Wunde.'), nl,
    nl,
    frage_letzte_evakuierung.
process_feind_helfen_wahl(_) :-
    write('Ungueltige Eingabe. Bitte gib 1 oder 2 ein.'), nl,
    frage_feind_helfen.

frage_letzte_evakuierung :-
    write('------------------------------------------'), nl,
    write('Letzte Evakuierung unter Beschuss. Die Granaten schlagen immer naeher ein, Rauch und Chaos ueberall.'), nl,
    write('Du stehst vor der Wahl, dein eigenes Leben zu riskieren, um andere zu retten, oder dich in Sicherheit zu bringen.'), nl,
    write('  1) Du setzt alles daran, so viele Menschen wie moeglich zu evakuieren, auch wenn es dein eigenes Leben kostet.'), nl,
    write('  2) Du konzentrierst dich darauf, dich selbst zu retten, da die Situation aussichtslos erscheint.'), nl,
    nl,
    write('-> Deine Wahl (1/2): '),
    read(F),
    process_letzte_evakuierung_wahl(F).

process_letzte_evakuierung_wahl(1) :-
    beschuetzerin_ueberlebt.
process_letzte_evakuierung_wahl(2) :-
    beschuetzerin_maertyrin.
process_letzte_evakuierung_wahl(_) :-
    write('Ungueltige Eingabe. Bitte gib 1 oder 2 ein.'), nl,
    frage_letzte_evakuierung.

beschuetzerin_ueberlebt :-
    write('Du hilfst nach dem Krieg vielen Menschen. Die Erinnerungen an das Leid lassen dich nie ganz los, aber du findest Trost im Guten, das du bewirkt hast.'), nl,
    halt.

beschuetzerin_maertyrin :-
    write('Du stirbst beim Versuch, andere zu retten. Dein Mut und deine Menschlichkeit werden in den Herzen der Geretteten weiterleben.'), nl,
    halt.