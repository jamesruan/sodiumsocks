all: build

build:
	rebar3 compile

start_server: build
	erl -smp auto -config ./env -pa ./ebin -boot start_sasl -s sodium_app start -detached
