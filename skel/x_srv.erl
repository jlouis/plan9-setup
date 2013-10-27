-module(x_srv).

-behaviour(gen_server).

-export([
	code_change/3, handle_call/3, handle_cast/2, handle_info/2, init/1, terminate/2
	]).
	
-export([
	start_link/0
	]).
	
-record(state, {
	}).

%% API

start_link() ->
	gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

%% Callbacks

init([]) ->
	{ok, #state{}}.
	
handle_call(Msg, _From, State) ->
	ok = lager:error("Unknown call: ~p", [Msg]),
	{reply, {error, unknown}, State}.
	
handle_cast(Msg, State) ->
	ok = lager:error("Unknown cast: ~p", [Msg]),
	{noreply, State}.
	
handle_info(Msg, State) ->
	ok = lager:error("Unknown handle_info: ~p", [Msg]),
	{noreply, State}.
	
terminate(_Reason, _State) ->
	ok.
	
code_change(_OldVsn, State, _Extra) ->
	{ok, State}.


	
