-module(poker_hands).
-export([sum/1, rank/1]).

sum([X|R]) -> X + sum(R);
sum([]) -> 0.

rank({X,_}) -> X.
