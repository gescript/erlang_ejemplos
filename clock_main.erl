
	%% 1. Make a master clock to multiplayer game online.
	%% 2. Implement "calcTime()" functionally without "if"
	%% 3. Make a pulse clock in a separate module. (A pulse message every second.)
	%% 4. Resolve priority messages.

	-module(clock_main).
	-export([init/0, clockLoop/1]).

	init() -> 
		PidClock = spawn(clock_main, clockLoop, [ {0, 0, 0} ]),
		register( clock, PidClock).

	clockLoop( Time ) ->
		receive
			{ pulse } -> 
				clockLoop( calcTime(Time) )
		end.

	calcTime( {H, M, S} ) ->
		{ H, M, S + 1 }.



