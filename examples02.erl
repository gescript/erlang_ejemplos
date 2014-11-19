
	%% Kata Tennis
	%% 1. Make a program that takes the score of a tennis game.
	%% 2. Implement "calcNextScore()" functionally without "if"

	tennis(Score) ->
		receive
			{ player1_goal } ->
				NewScore = calcNextScore(Score, 1, 0),
				tennis(NewScore);
			{ player2_goal } ->
				NewScore = calcNextScore(Score, 0, 1),
				tennis(NewScore)
		end
