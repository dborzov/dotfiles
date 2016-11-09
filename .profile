printf "\033c"
export EDITOR="atom -w"

function separator() {
  printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' ❤
}


# tagme allows me to quickly change the title of iTerm tab
# so I can keep track of what I have been working on in this tab
# here is th syntax:
#             tagme 'My new tab title!!!'
function tagme() {
  echo -ne "\033]0;-$1 :)\007"
}

export VM=yoshiVM
function startvirtualbox() {
  VBoxManage startvm $VM --type headless
}

function ssh2virtualbox() {
  ssh -p 3022 borzov@localhost
}
export PS1="\[\e[33m\]★\[\e[92m\]\A\[\e[36m\]★\[\e[92m\] \w \[\e[97m\]"
export GOPATH=~
export PATH=~/.rbenv/shims:/usr/sbin:/sbin:/usr/local/go/bin:~/bin:$PATH
eval "$(rbenv init -)"
GIT_PS1_SHOWDIRTYSTATE=true
