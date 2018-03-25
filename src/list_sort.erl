-module(list_sort).
-export([list_sort/1]).

list_sort(L) when is_list(L) ->
	list_sort([],[],L);
list_sort(_) ->
	error.

list_sort(L1, L2, [E|U]) when E<5 ->
	list_sort(L1++[E], L2, U);
list_sort(L1, L2, [E|U]) when E>=5 ->
	list_sort(L1, L2++[E], U);
list_sort(L1, L2, []) ->
	{L1, L2}.

