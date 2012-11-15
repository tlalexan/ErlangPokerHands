-module(poker_hands_tests).
-include_lib("eunit/include/eunit.hrl").
-import(poker_hands, [card/1, rank/1, hand/1, highcard/1, flush/1, straight/1, straight_flush/1]).

card_test() ->
	?assertEqual({3, h}, card("3H")),
	?assertEqual({2, h}, card("2H")),
	?assertEqual({13, h}, card("KH")).

rank_test() ->
	?assertEqual(2, rank({2, h})),
	?assertEqual(3, rank({3, h})).

hand_test() ->
	?assertEqual([{3, h}, {2, s}, {13, h}], hand("3H 2S KH")).

highcard_test() ->
	?assertEqual(10, highcard(hand("2H 3S 4D 5C TH"))),
	?assertEqual(13, highcard(hand("2H 3S 4D KH 5C"))).	

flush_test() ->
	?assertEqual(true, flush(hand("2H 3H 6H 8H JH"))),
	?assertEqual(false, flush(hand("2H 3C 6H 8H AC"))).

straight_test() ->
	?assertEqual(true, straight(hand("2H 3H 4H 5H 6H"))),
	?assertEqual(false, straight(hand("2H 3H 8H 5H 6H"))).

straight_flush_test() ->
	?assertEqual(true, straight_flush(hand("2H 3H 4H 5H 6H"))).