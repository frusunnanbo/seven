-module(count).
-export([to_ten/0]).

to_ten() -> to_ten_counting(1).

to_ten_counting(10) -> io:format("10\n");
to_ten_counting(Current) -> io:format("~w\n", [Current]), to_ten_counting(Current + 1).
