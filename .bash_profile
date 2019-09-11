export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export GOPATH=$HOME/Projects/go
set -o vi



prompt_command () {
	source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
	PS1="\$(kube_ps1)|$(basename $(dirname "$PWD"))/$(basename "$PWD")|\[\033[32m\](\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))\[\033[m\]\$ "
}
PROMPT_COMMAND=prompt_command

alias ls='ls -GFh'

alias work='cd ~/Projects/go/project-franklin-autofill'

alias watchall='watch -n 1 "kubectl get po | grep autofill"'
alias watchauth='watch -n 1 "kubectl logs -l app=autofill-auth-service"'
alias watchweb='watch -n 1 "kubectl logs -l app=autofill-web-service"'
alias watchmustang='watch -n 1 "kubectl logs -l app=autofill-mustang-service"'
alias watchqa='watch -n 1 "kubectl logs -l app=autofill-qa-service"'
alias watchmobile='watch -n 1 "kubectl logs -l app=autofill-mobile-service"'
alias watchemail='watch -n 1 "kubectl logs -l app=autofill-email-service"'

alias cleanme='cd ~/.local/share/nvim/swap/; find . -type f -name "*.sw[klmnop]" -delete;cd -'
