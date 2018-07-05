# proxy-switchy.sh

# start proxy
function proxy() {
	export http_proxy=127.0.0.1:8118;
	export https_proxy=127.0.0.1:8118;
}

# unset proxy
function unproxy() {
	unset http_proxy;
	unset https_proxy;
}
