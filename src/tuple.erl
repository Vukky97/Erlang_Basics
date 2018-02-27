%%%-------------------------------------------------------------------
%%% @author tothkris
%%% @copyright (C) 2018, <BTK Software>
%%% @doc
%%%
%%% @end
%%% Created : 23. Feb 2018 13:08
%%%-------------------------------------------------------------------
-module(tuple).
-author("tothkris").

%% API
-export([print/0]).

data() ->
  {{budapest, 10}, {berlin, 12}}.

print() ->
  {{A, B}, {C, D}} = data(),
  io:format("~w temperature: ~w ~n", [A, B]),
  io:format("~w temperature: ~w ~n", [C, D]).
