%%%-------------------------------------------------------------------
%% @doc outside_world public API
%% @end
%%%-------------------------------------------------------------------

-module(outside_world_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    outside_world_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
