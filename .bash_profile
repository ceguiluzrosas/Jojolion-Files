#####################
### unix commands ###
#####################
alias tree='tree -CD' # for small directories
alias ld='ls -ld */'
alias ls='ls -G'

####################
### aws commands ###
####################
alias assume='source ~/.aws/assume-role.sh' # assumes an iam role
alias cfg='vim ~/.aws/config' # edits the aws iam config file

####################
### git commands ###
####################
TEAM='' # github_usernames of team
alias gpr='hub pull-request -r $TEAM --browse -m' # creates a PR with TEAM as reviewers
alias gdel='git branch | grep -v "master" | grep -v ^* | xargs git branch -d;' # deletes all merged branches
alias gfix='git fetch && git rebase -i origin/master' # safely rebases new changes for cleaner history
alias gammend='git commit -a --amend --no-edit && git push --force' # ammends a small change to PR
alias gbranch="git branch | grep \* | cut -d ' ' -f2" # returns the name of the current branch
alias gfirst='git push --set-upstream origin $(gbranch)' # first time push
alias grename='git branch -m' # renames a git branch
alias god='gfirst && gpr' # first push + PR

####################
### dev commands ###
####################
alias exp='source .env && export $(cut -d= -f1 .env)' # exports .env vars
alias terra='terraform init --upgrade && terraform plan' # safely does a terraform plan
alias pygone="find . | grep -E '(__pycache__|\.pyc|\.pyo$)' | xargs rm -rf" # removes __pycache__ files

######################
### other commands ###
######################
alias bb='vim ~/.bash_profile' # shortcut to bash file
