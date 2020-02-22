-module(string_words).
-export([count/1]).

count([]) -> 0;
count([_ | Tail]) -> 1 + count(Tail).
