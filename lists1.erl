
	%% Guards + Polymorphism

	-module(lists1).
	-export([double/1]).

	double( [H|T] ) when is_integer(H) ->
		[ 2*H | double(T)];
	double( [H|T] ) when is_list(H) ->
		[ double(H) | double(T)];
	double( [] ) ->
		[].


		