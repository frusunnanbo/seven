-module(message).
-export([message/1]).

message(Input) -> 
    case Input of 
	success -> io:format("success\n");
	{error, Message} -> io:format("error:~s\n", [Message])
    end.
