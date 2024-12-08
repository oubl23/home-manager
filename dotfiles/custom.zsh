function sp () {
	export https_proxy=ip:7890
	export http_proxy=ip:7890
}

function np () {
	unset http_proxy
	unset https_proxy
}

function r(){
	redis-cli -h $1 -p 8379 -a redis_ruijie
}

function kc(){
	cp ~/.config/kafkactl/.config.yml ~/.config/kafkactl/config.yml
	chmod 777 ~/.config/kafkactl/config.yml
	kafkactl config use-context $1
	kafkactl consume $2
}

function kp(){
	cp ~/.config/kafkactl/.config.yml ~/.config/kafkactl/config.yml
	chmod 777 ~/.config/kafkactl/config.yml
	kafkactl config use-context $1
	#kafkactl produce $2 --separator=# --file=message
	kafkactl produce $2 --file=message
}
