-module(poker_hands_tests).
-include_lib("eunit/include/eunit.hrl").

% sum_test() ->
%     ?assertEqual(0, poker_hands:sum([])),
%     ?assertEqual(0, poker_hands:sum([0])),
%     ?assertEqual(6, poker_hands:sum([1,2,3,4,-4])).

rank_test() ->
	?assertEqual(2, poker_hands:rank({2, h})),
	?assertEqual(3, poker_hands:rank({3, h})).