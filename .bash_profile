export GITAWAREPROMPT=~/.bash/git-aware-prompt
export LC_ALL=C
source "${GITAWAREPROMPT}"/main.sh
PS1="[\[\033[33m\]\h\[\033[0m\]:\[\033[35m\]\w\[\033[0m\]] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "


