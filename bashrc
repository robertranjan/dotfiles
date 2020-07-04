#alias alias-k="source <(kubectl completion bash); alias k=kubectl ; complete -F __start_kubectl k"
source <(kubectl completion bash); alias k=kubectl ; complete -F __start_kubectl k
env_list() { k set env pod --list }

savex() {
	if [[ $# == 0 ]] ; then
		printf "syntax:\n\t${yellow} $0 k8s-object${reset}\n"
		printf "example:\n\t${yellow} $0 svc${reset}"
		printf "\n\t${yellow} $0 po${reset}\n"
		return 1
	fi

	for obj in $(k get $1 --no-headers | awk '{print $1}') ; do
		printf "Saving ${obj} => ${1}_${obj}.yaml\n"
		k get ${1}/${obj} $y > ${1}_${obj}.yaml
	done
}

export now="--grace-period=0 --force"

alias k='kubectl ${context} ${namespace} '

export y='-o=yaml'
export j='-o=json'
export w='-o=wide'
export dr="--dry-run=client"
export now='--grace-period=0'

alias kcu='k config use-context '
alias rollst='k ${context} ${namespace} rollout status deploy '
alias rollhist='k ${context} ${namespace} rollout history deploy '
alias descx='k ${context} ${namespace} describe '
alias delx='k ${context} ${namespace} delete $now'
alias watchx='watch "k get -owide"'

alias events='kubectl ${context} ${namespace} get events --sort-by=".metadata.creationTimestamp" --field-selector=involvedObject.name="$1" '
# alias events='kubectl ${context} ${namespace} get events --field-selector involvedObject.name=$1 '

alias getx='k ${context} ${namespace} get -owide'
alias gety='k ${context} ${namespace} get $y'
alias getj='k ${context} ${namespace} get $j'
alias logs='k ${context} ${namespace} logs --all-containers'
alias gc='k config get-contexts ; printf "${yellow}current selection: ${bold}$context $namespace ${reset}\n"'
