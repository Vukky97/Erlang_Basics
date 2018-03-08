-module(days).
-export([day/1]).

day(N)->
	case N of
		1->monday;
		2->tuesday;
		3->wednesday;
		4->thursday;
		5->friday;
		6->saturday;
		7->sunday;
		_->bad_args
	end.