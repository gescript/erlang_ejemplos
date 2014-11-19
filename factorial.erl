
	%% Guards

	-module(factorial).
	-export([fac/1]).

	fac(N) -> fac(N, 1).
	
	fac(N, Product) when N > 0 ->
		fac(N-1, Product*N);
	fac(0, Product) ->
		Product.

