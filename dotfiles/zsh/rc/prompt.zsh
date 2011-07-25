# autoload -Uz promptinit && promptinit
autoload -Uz add-zsh-hook vcs_info
require promptinfo solarized autotitle

add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' enable git svn hg
zstyle ':vcs_info:*' formats "%{$FG[cyan]%}[%b]"
zstyle ':vcs_info:*' actionformats "%{$FG[violet]%}[%b]%{$FG[orange]%}%a"
zstyle ':promptinfo:' git-status "%{$FG[green]%}%(i..+)%{$FG[yellow]%}%(w..*)%{$FG[orange]%}%(m.*.)%{$FG[base01]%}%(t.?.)"

# prompt
setopt promptsubst promptpercent
promptcolor="green"
add-zsh-hook precmd promptinfo_exitstatus_precmd
PROMPT="%{$FX[reset]%}%(?..%{$FG[red]%}‣ exited %1v%{$FX[reset]%}
)"
PROMPT+="%{$FG[$promptcolor]$FX[reverse]%} %{$FX[no-reverse]%} "
PROMPT+="%2~%{$FG[base03]%}%(!.#.$)%{$FX[reset]%}"
RPROMPT="\$(promptinfo_git_status)\${vcs_info_msg_0_}%{$FX[reset]%}"
