-module({{id}}).

-include_lib("eunit/include/eunit.hrl").

start() ->
    [].

stop(_SetupData) ->
    ok.

can_do_something(_SetupData) ->
    [?_assertEqual(true, true)].

simple_test_() ->
    {setup,
        fun start/0,
        fun stop/1,
        fun(SetupData) ->
            {inparallel, [
                can_do_something(SetupData)
            ]}
        end
    }.

