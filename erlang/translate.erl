-module(translate).
-export([translate/1, new/0]).

loop() ->
     receive
	{From, "hus"} ->
	     From ! "house",
	     loop();
	 {From, "vit"} ->
	     From ! "white",
	     loop();
	 {From, _} ->
	     From ! "det ordet kan jag inte",
	     loop()
end.

new() ->
    register(translator, spawn(fun loop/0)).

translate(Word) ->
    translator ! {self(), Word},
    receive
	Translation -> Translation
    end.

