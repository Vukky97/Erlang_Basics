%%%-------------------------------------------------------------------
%%% @author tothkris
%%% @copyright (C) 2018, <BTK Software>
%%% @doc
%%%
%%% @end
%%% Created : 23. Feb 2018 13:05
%%%-------------------------------------------------------------------
-module(average).
-author("tothkris").

%% API
-export([avg/1, print/0, len/2, sum/2]).

sum(Acc, [E | V]) ->
  sum(Acc + E, V);
sum(Acc, []) ->
  Acc.

len([_ | V], Count) ->
  len(V, Count + 1);
len([], Count) ->
  Count.

avg(L) ->
  sum(0, L) / len(L, 0).

print() ->
  A = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
  io:fwrite("Average is: ~w", [avg(A)]).
