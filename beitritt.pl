% ==========================================
% KAPITEL 1 - DER BEITRITT ZUR ARMEE
% ==========================================

armee_beitritt :-
    nl,
    write('=================================================='), nl,
    write('||      KAPITEL 1 - DER BEITRITT ZUR ARMEE      ||'), nl,
    write('=================================================='), nl,
    nl,
    write('Die Kaserne ist von hektischem Treiben erfuellt. Ueberall marschieren Soldaten, Offiziere rufen Befehle, und der Geruch von Metall und Schweiss liegt in der Luft.'), nl,
    write('Wie moechtest du dich der Armee anschliessen?'), nl,
    write('  1) Mit gefaelschten Papieren versuchen, durchzukommen. Du hoffst, dass niemand deine wahre Identitaet bemerkt.'), nl,
    write('  2) Direkt vorsprechen und dich durch deine Staerke beweisen. Dein Mut ist deine groesste Waffe.'), nl,
    write('  3) Jemanden in der Armee um Hilfe bitten, der dich kennt. Vielleicht kann ein Freund dir den Weg ebnen.'), nl,
    nl,
    write('-> Deine Wahl (1/2/3): '),
    read(Wahl),
    armee_pfad(Wahl).

armee_pfad(1) :-
    nl,
    write('Du hast Dokumente gefaelscht. Der Eintritt gelingt, aber die Gefahr, entdeckt zu werden, bleibt. Jeder Blick eines Offiziers laesst dein Herz schneller schlagen.'), nl,
    write('Du versuchst, dich unauffaellig zu verhalten und hoffst, dass niemand Verdacht schoepft.'), nl,
    nl,
    grundausbildung_entscheidung.

armee_pfad(2) :-
    nl,
    write('Du meldest dich direkt. Die Offiziere mustern dich skeptisch, doch du bestehst durch deine Koerperkraft und deinen entschlossenen Blick.'), nl,
    write('Man reicht dir eine Uniform und du spuerst, wie du Teil von etwas Grossem wirst.'), nl,
    nl,
    grundausbildung_entscheidung.

armee_pfad(3) :-
    nl,
    write('Ein befreundeter Soldat bringt dich rein. Er kennt dein Geheimnis und koennte es verraten, doch er steht zu dir.'), nl,
    write('Du bist dankbar, aber auch nervoes: Wird er dich wirklich schuetzen, wenn es darauf ankommt?'), nl,
    nl,
    grundausbildung_entscheidung.

armee_pfad(_) :-
    write('Ungueltige Eingabe. Bitte gib 1, 2 oder 3 ein.'), nl,
    armee_beitritt.