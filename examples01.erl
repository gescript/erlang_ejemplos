

	%% Sequentially give 1..10 numbers to visitors

	-module(examples01).
	-export([init_disp/0, dispatcher/1]).

	init_disp() ->
		spawn(examples01, dispatcher, [1]).
	
	dispatcher( N ) ->
		receive
			{ next, Visitor } when N < 11 ->
				Visitor ! { position, N },
				dispatcher( N + 1 );
			_ -> ok
		end.
		

		