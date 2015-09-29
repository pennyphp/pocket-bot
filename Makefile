init:
	HUBOT_IRC_SERVER=irc.freenode.net \
	HUBOT_IRC_ROOMS="#pennyphp" \
	HUBOT_IRC_NICK="pocket-bot" \
    HUBOT_IRC_UNFLOOD="true" \
	HUBOT_GITHUB_EVENT_NOTIFIER_TYPES=pull_request,pull_request \
	PORT=1234 \
	BIND_ADDRESS=0.0.0.0 \
  bin/hubot -a irc --name pocket-bot

docker_build:
	docker build -t gianarb/pocket-bot .

docker_run:
	docker run -p 1237:1237 gianarb/pocket-bot
