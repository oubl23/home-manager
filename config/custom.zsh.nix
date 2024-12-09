{ proxy }:''
function sp () {
	export https_proxy=${proxy}
	export http_proxy=${proxy}
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

function ub(){
	ssh $1 "firewall-cmd --add-rich-rule='rule family="ipv4" source address="10.104.82.188/32" accept';firewall-cmd --runtime-to-permanent;firewall-cmd --reload"
}

function hp(){
	echo "sp: set proxy"
	echo "np: unset proxy"
	echo "ub: unblock server; example: ub 172.28.209.32"
	echo "r: connect redis; example: r 172.28.209.32"
	echo "kc: kafka consume,read config from ~/.config/kafkactl/config.yml; example: kc 32 dev-mac"
	echo "kp: kafka produce,read config from ~/.config/kafkactl/config.yml; example: kp 32 dev-mac"
}
''