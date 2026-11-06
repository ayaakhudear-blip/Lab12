road('Dammam', 'Qatif').
road('Dammam', 'Riyadh').
road('Qatif', 'Dammam').
road('Qatif', 'Madinah').
road('Riyadh', 'Dammam').
road('Makkah', 'Madinah').
road('Makkah', 'Riyadh').
road('Madinah', 'Makkah').
road('Madinah', 'Tabuk').
road('Madinah', 'Taif').
road('Tabuk', 'Taif').
road('Taif', 'Tabuk').
road('Taif', 'Dammam').

travel(Start, End, Path) :-
    path(Start, End, [Start], Path).

path(City, City, _, [City]).
path(Current, End, Visited, [Current|Rest]) :-
    Current \= End,
    road(Current, Next),
    \+ member(Next, Visited),
    path(Next, End, [Next|Visited], Rest).
