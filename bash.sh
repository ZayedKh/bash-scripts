alias gs='git status'
alias cmt='git commit -am'
alias gb='git branch'
alias addall='git add .'
alias gpom='git push origin main'
alias gp='git push'
alias erc='vim ~/.zshrc'
alias load='source ~/.zshrc'
alias newBranch='git checkout -b'
alias setSSH='git remote set-url origin'
alias gcm='git checkout main'
alias goto='git checkout'
alias gd='git diff'

# pushes current branch to remote
gpush(){
        BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)
        git push origin "$BRANCH_NAME"
}

# pulls from remote branch to current branch
gpull(){
        BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)
        git pull origin "$BRANCH_NAME"
}

# commit and push at the same time
cpush(){
        BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)
        git commit -am "$1" && git push origin "$BRANCH_NAME"
}