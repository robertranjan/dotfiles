#alias alias-k="source <(kubectl completion bash); alias k=kubectl ; complete -F __start_kubectl k"
source <(kubectl completion bash); alias k=kubectl ; complete -F __start_kubectl k
alias env-list='k --namespace isd-drep-dev --cluster=usrno3 set env pod $1 --list'
alias label-list='k --namespace isd-drep-dev --cluster=usrno3 label pod $1 --list'
export now="--grace-period=0 --force"

alias k='kubectl ${context} ${namespace} '

export y='-o=yaml'
export j='-o=json'
export w='-o=wide'
export dr="--dry-run=client"
export now='--grace-period=0'

alias kcu='k config use-context $1 '
alias rollst='k ${context} ${namespace} rollout status deploy $1'
alias rollhist='k ${context} ${namespace} rollout history deploy $1'
alias descx='k ${context} ${namespace} describe $1'
alias delx='k ${context} ${namespace} delete $1 $now'
alias watchx='watch "k get $1 -owide"'

# alias events='k ${context} ${namespace} get events --field-selector involvedObject.name=$1 --sort-by=.metadata.creationTimestamp '
alias events='kubectl ${context} ${namespace} get events --sort-by=".metadata.creationTimestamp" --field-selector=involvedObject.name="$1" '
# alias events='kubectl ${context} ${namespace} get events --field-selector involvedObject.name=$1 '

alias getx='k ${context} ${namespace} get $1 -owide'
alias gety='k ${context} ${namespace} get $1 $y'
alias getj='k ${context} ${namespace} get $1 $j'
alias logs='k ${context} ${namespace} logs $1 --all-containers'
alias gc='k config get-contexts ; printf "${yellow}current selection: ${bold}$context $namespace ${reset}\n"'

alias env-list='k ${context} ${namespace} set env pod $1 --list'

# functions
set-kube-options() {
	read "context?Enter context: "
	read "namespace?Enter namespace: "
	namespace="--namespace=$namespace"
	context="--context=$context"
	printf "${yellow}kube-options are set to --namespace=$namespace --context=$context${reset}\n"
}
unset-kube-options() {
	unset namespace
	unset context
	printf "${yellow}kube-options were unset. now namepace=#$namespace# context=#$context#${reset}\n"
}
