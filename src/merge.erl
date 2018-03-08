-module (merge).
-export ([merge/2]).

merge(S, K)->
	[{A,B}||A<-S,B<-K].