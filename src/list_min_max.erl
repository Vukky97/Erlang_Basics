%%%-------------------------------------------------------------------
%%% @author tothkris
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Mar 2018 12:48
%%%-------------------------------------------------------------------
-module(list_min_max).
-author("tothkris").

%% API
-export([minimum/1, maximum/1]).

minimum([]) -> io:format("List is empty!~n");

minimum([H|T])  ->
  minimum(H, T).

minimum(Min, [H|T]) ->
  case Min < H of
    true -> minimum(Min, T);
    false -> minimum(H, T)
  end;

minimum(Min, []) -> Min.

maximum([]) -> io:format("List is empty!~n");

maximum([H|T])  ->
  maximum(H, T).

maximum(Max, [H|T]) ->
  case Max > H of
    true -> maximum(Max, T);
    false -> maximum(H, T)
  end;

maximum(Max, []) -> Max.
