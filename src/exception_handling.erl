-module(exception_handling).
-export([f/1]).

f(V) ->
	try
		io:format("~s~n", [V])
	catch
		H1:H2 -> io:format("H1:~w, H2:~w~n", [H1, H2])
	after
		io:format("~w~n", [always_gets_executed])
	end.