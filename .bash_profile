export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}"/main.sh
PS1="[\[\033[32m\]\h\[\033[0m\]:\[\033[35m\]\w\[\033[0m\]] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "


