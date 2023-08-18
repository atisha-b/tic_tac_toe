% Define the game board as a list of lists
empty_board([['_', '_', '_'], ['_', '_', '_'], ['_', '_', '_']]).

% A win is achieved if three symbols in a row, column, or diagonal match
win(Board, Player) :-
    ( Board = [[Player, Player, Player], _, _]
    ; Board = [_, [Player, Player, Player], _]
    ; Board = [_, _, [Player, Player, Player]]
    ; Board = [[Player, _, _], [Player, _, _], [Player, _, _]]
    ; Board = [[_, Player, _], [_, Player, _], [_, Player, _]]
    ; Board = [[_, _, Player], [_, _, Player], [_, _, Player]]
    ; Board = [[Player, _, _], [_, Player, _], [_, _, Player]]
    ; Board = [[_, _, Player], [_, Player, _], [Player, _, _]]
    ).

% Check if the board is full (no empty cells)
board_full(Board) :- not(member('_', Board)).

% Check for a tie (board is full and no one has won)
tie(Board) :- board_full(Board), not(win(Board, 'X')), not(win(Board, 'O')).
