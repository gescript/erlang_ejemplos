
	%% Pattern Mathching + Polymorphism
	
	-module(polygons).
	-export([area/1]).

	area( {square, Side} ) ->
		Side * Side;
	area( {rectangle, X, Y} ) ->
		X * Y;
	area( {circle, Radius} ) ->
		math:pi() * Radius * Radius;
	area( {triangle, A, B ,C} ) ->
		S = ( A + B + C )/2,
		math:sqrt( S * (S-A) * (S-B) * (S-C) ).


