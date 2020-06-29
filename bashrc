#alias alias-k="source <(kubectl completion bash); alias k=kubectl ; complete -F __start_kubectl k"
source <(kubectl completion bash); alias k=kubectl ; complete -F __start_kubectl k
alias env-list='k --namespace isd-drep-dev --cluster=usrno3 set env pod $1 --list'
alias label-list='k --namespace isd-drep-dev --cluster=usrno3 label pod $1 --list'
export now="--grace-period=0 --force"
export y='-o=yaml'
export j='-o=json'
export w='-o=wide'
export dr="--dry-run=client"
export now='--grace-period=0'

