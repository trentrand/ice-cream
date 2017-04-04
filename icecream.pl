% Ice cream drawing program [GNU-Prolog]
% Created by: Trent Rand
% % %
% Project by: ICLP 2013 Prolog Programming Competition
% Link: https://people.cs.kuleuven.be/~bart.demoen/PrologProgrammingContests/Contest2013.html
% % % % %
% Example usage:
% ?- icecream(4).
%         ()
%        (())
%       ((  ))
%      ((    ))
%     /\/\/\/\/\
%     \        /
%      \      /
%       \    /
%        \  /
%         \/
% % % % %

%% Draw an ice-cream cone of size X
icecream(X) :-
    top(X),         % Draw the ice cream scoops
    fillmid(X),     % Draw the angular section between the ice cream and the cone
    cone(X).         % Draw the cone

%% Insert padding
padding(0) :- !.
padding(1) :-
    write(' '), !.

padding(N) :-
    N > 0,
    write(' '),
    N1 is N - 1,
    padding(N1).

%% Create the angular cone section between the ice cream and the cone
fillmid(N) :-
    N1 is N + 1,
    padding(N1),
    drawconnector(N1).

drawconnector(N) :-
    N > 0,
    write('/\\'),
    N1 is N - 1,
    drawconnector(N1), nl.

%% Draw the ice cream scoops
top(X) :- X > 0, top(X, 1).

top(0,Y) :- !.

top(X,1) :-
    X1 is X-1,
    P is X + 2,
    top(X1, P),
    padding(P),
    filltop(X).

top(X, Y) :-
    X > 0,
    X1 is X-1, Y1 is Y+1,
    top(X1, Y1),
    P is Y1,
    padding(P),
    filltop(X), nl.

filltop(1) :-
    write('()'),nl.
filltop(X) :-
    X > 1,
    write('(('),
    P is 2*(X-2),
    padding(P),
    write('))'), nl.

%% Draw the cone
cone(X) :- X >= 0, cone(X, 1).

cone(0,Y) :-
    Y1 = Y+1,
    padding(Y1),
    write('\\/'),nl,!.

cone(X,1) :-
    X1 is X-1,
    P is X + 2,
    padding(P),
    fillcone(X),
    cone(X1, P).

cone(X, Y) :-
    X > 0,
    X1 is X-1, Y1 is Y+1,
    P is Y1,
    padding(P),
    fillcone(X),
    cone(X1, Y1).

fillcone(1) :-
    write('\\'),
    P is 2 * 1,
    padding(P),
    write('/'), nl.

fillcone(X) :-
    X > 1,
    write('\\'),
    P is 2 * X,
    padding(P),
    write('/'), nl.
