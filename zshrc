# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ags/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit
promptinit


source /usr/share/fonts/awesome-terminal-fonts/fontawesome-regular.sh
#source /usr/lib/zsh-git-prompt/zshrc.sh
#GIT_UNTRACKED=0
PROMPT='%B%F{green}%n@%m%f %F{blue}%1~ $(git_super_status)$ %b%f'
RPROMPT='[%B%F{yellow}%?%f]'

# Required for fallback mode to work with oh-my-git-themes
omg_is_a_git_repo_symbol="\u${CODEPOINT_OF_AWESOME_GITHUB_ALT}"
omg_has_untracked_files_symbol="\u${CODEPOINT_OF_AWESOME_TINT}"
omg_has_adds_symbol="\u${CODEPOINT_OF_AWESOME_PLUS}"
omg_has_deletions_symbol="\u${CODEPOINT_OF_AWESOME_MINUS}"
omg_has_cached_deletions_symbol="\u${CODEPOINT_OF_OCTICONS_X}"
omg_has_modifications_symbol="\u${CODEPOINT_OF_OCTICONS_PENCIL}"
omg_has_cached_modifications_symbol="\u${CODEPOINT_OF_OCTICONS_FILE_TEXT}"
omg_ready_to_commit_symbol="\u${CODEPOINT_OF_AWESOME_SIGNIN}"
omg_is_on_a_tag_symbol="\u${CODEPOINT_OF_AWESOME_TAG}"
omg_needs_to_merge_symbol="\u1109"
omg_detached_symbol="\u${CODEPOINT_OF_AWESOME_UNLINK}"
omg_can_fast_forward_symbol="\u${CODEPOINT_OF_AWESOME_DOUBLE_ANGLE_UP}"
omg_has_diverged_symbol="\u${CODEPOINT_OF_OCTICONS_GIT_BRANCH}"
omg_not_tracked_branch_symbol="\u${CODEPOINT_OF_AWESOME_LAPTOP}"
omg_rebase_tracking_branch_symbol="\u${CODEPOINT_OF_OCTICONS_GIT_PULL_REQUEST}"
omg_merge_tracking_branch_symbol="\u${CODEPOINT_OF_OCTICONS_GIT_MERGE}"
omg_should_push_symbol="\u${CODEPOINT_OF_OCTICONS_CLOUD_UPLOAD}"
omg_has_stashes_symbol="\u${CODEPOINT_OF_AWESOME_STAR}"
omg_has_action_in_progress_symbol="\u${CODEPOINT_OF_AWESOME_WRENCH}"

source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh
antigen bundle arialdomartini/oh-my-git
#antigen theme arialdomartini/oh-my-git-themes oppa-lana-style
#antigen theme arialdomartini/oh-my-git-themes arialdo-granzestyle
#antigen theme arialdomartini/oh-my-git-themes arialdo-pathinline
antigen theme /home/ags/projects/oh-my-git-themes arialdo-pathinline --no-local-clone

antigen apply

bindkey "^R" history-incremental-search-backward

export SVN_EDITOR="vim"
export EDITOR="vim"
export GCC_COLORS="error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"
export GREP_COLORS="ms=1;32:fn=36"
export PATH="/home/ags/.cargo/bin:/home/ags/bin:${PATH}"

# Enable colors with dark theme for the IP command
export COLORFGBG="3;3;3"
alias ip="ip -c"

alias vi=vim
alias mv="mv -i"

