:- initialization(start).

% ==========================================
% KAPITEL 0 - SPIELSTART
% ==========================================

start :-
    nl,
    write('=================================================='), nl,
    write('||             KAPITEL 0 - SPIELSTART           ||'), nl,
    write('=================================================='), nl,
    nl,
    intro,
    armee_beitritt.

intro :-
    write('Willkommen zu "Milunka Savic - HerStory"'), nl,
    nl,
    write('Serbien, 1913. Der Zweiten Balkankrieg beginnt. Die Welt ist im Umbruch, und das Schicksal deines Landes steht auf dem Spiel.'), nl,
    write('Du bist Milunka, eine junge Frau voller Mut und Entschlossenheit. Dein Bruder wurde einberufen, und die Angst um ihn laesst dir keine Ruhe.'), nl,
    write('Doch du willst ihn beschuetzen - und trittst an seiner Stelle ein. In einer Nacht voller Zweifel und Hoffnung schneidest du dir das Haar ab, ziehst Maennerkleidung an und nimmst eine neue Identitaet an.'), nl,
    write('Mit pochendem Herzen und festem Willen begibst du dich auf einen Weg, der nicht nur dein Leben, sondern auch die Geschichte beeinflussen wird.'), nl,
    nl.