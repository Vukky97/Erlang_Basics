%%%-------------------------------------------------------------------
%%% @author tothkris
%%% @copyright (C) 2018, <BTK Software>
%%% @doc
%%%
%%% @end
%%% Created : 23. Feb 2018 13:05
%%%-------------------------------------------------------------------
-module(sum).
-author("tothkris").

%% API
-export([print/0, calculate/1, sum/2]).

sum(Acc, [E | V]) ->
  sum(Acc + E, V);
sum(Acc, []) ->
  Acc.

sum(L) when is_list(L) ->
  sum(0, L);
sum(_) ->
  bad_param.

calculate(L) ->
  %sum(0, L).
  sum(L).

print() ->
  A = [1, 2, 3, 4, 5, 6, 7, 8, 9],
  io:fwrite("The sum is: ~w", [calculate(A)]).

