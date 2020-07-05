source <(kubectl completion bash); alias k=kubectl ; complete -F __start_kubectl k

# savex() {
# 	funcName="savex"
# 	if [[ $# == 0 ]] ; then
# 		printf "syntax:\n\t${yellow} ${funcName} k8s-object${reset}\n"
# 		printf "example:\n\t${yellow} ${funcName} svc${reset}"
# 		printf "\n\t${yellow} ${funcName} po${reset}\n"
# 		return 1
# 	fi
# 
# 	for obj in $(k get $1 --no-headers | awk '{print $1}') ; do
# 		printf "Saving ${obj} => ${1}_${obj}.yaml "
# 		sleep 1
# 		$(k get ${1}/${obj} $y > ${1}_${obj}.yaml)
# 		printf " and ${1}_${obj}-cleaned.yaml\n"
# 		cat ${1}_${obj}.yaml | yq delete - metadata.managedFields | yq delete - spec.tolerations | yq delete - status > ${1}_${obj}-cleaned.yaml
# 	done
# }

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
