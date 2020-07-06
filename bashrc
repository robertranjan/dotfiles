source <(kubectl completion bash); alias k=kubectl ; complete -F __start_kubectl k

alias k='kubectl '

export y='-o=yaml'
export j='-o=json'
export w='-o=wide'
export dr="--dry-run=client"
export now='--grace-period=0'

alias kcu='k config use-context '
alias rollst='k  rollout status deploy '
alias rollhist='k  rollout history deploy '
alias descx='k  describe '
alias delx='k  delete $now'
alias watchx='watch "k get -owide"'

alias events='kubectl  get events --sort-by=".metadata.creationTimestamp" '

alias getx='k  get -owide'
alias gety='k  get $y'
alias getj='k  get $j'
alias logs='k  logs --all-containers'
alias gc='k config get-contexts ; printf "${yellow}current selection: ${bold}$context $namespace ${reset}\n"'
