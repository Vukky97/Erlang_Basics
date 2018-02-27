%%%-------------------------------------------------------------------
%%% @author tothkris
%%% @copyright (C) 2018, <BTK Software>
%%% @doc
%%%
%%% @end
%%% Created : 24. Feb 2018 7:46
%%%-------------------------------------------------------------------
-module(iteration).
-author("tothkris").

%% API
-export([print/0, iterate/1]).

iterate([E | V]) ->
  io:format("~w~n", [E]),
  iterate(V);
iterate([]) ->
  ok.

print() ->
  L = [1, 2, 3, 4, 5, 6],
  iterate(L).