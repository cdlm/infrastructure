# autoload -Uz promptinit && promptinit
autoload -Uz add-zsh-hook vcs_info
require promptinfo solarized autotitle

add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' enable git svn hg
zstyle ':vcs_info:*' formats "%{$FG[cyan]%}[%b]"
zstyle ':vcs_info:*' actionformats "%{$FG[violet]%}[%b]%{$FG[orange]%}%a"
zstyle ':promptinfo:' git-status "%{$FG[green]%}%(i..+)%{$FG[yellow]%}%(w..±)%{$FG[red]%}%(m.≠.)%{$FG[base01]%}%(t.?.)"

# prompt
setopt promptsubst promptpercent
promptcolor="green"
add-zsh-hook precmd promptinfo_exitstatus_precmd

# auto-hide the return code after an empty command
prompt_return_code_show="%{$FX[reset]%}%(?..%{$FG[red]%}‣ exited %1v%{$FX[reset]%}
)"
prompt_return_code_hide=""
prompt_return_code=$prompt_return_code_show

function accept-line-or-clear-warning() {
	if [[ -z $BUFFER ]]; then
		prompt_return_code=$prompt_return_code_hide
	else
		prompt_return_code=$prompt_return_code_show
	fi
	zle accept-line
}
zle -N accept-line-or-clear-warning
bindkey '^M' accept-line-or-clear-warning

PROMPT='${prompt_return_code}'"%{$FG[$promptcolor]$FX[reverse]%} %{$FX[no-reverse]%} "
if [[ $COLORFGBG = *';15' ]]; then # solarized light
    prompt_low_contrast_color="base3"
else
    prompt_low_contrast_color="base03"
fi
PROMPT+="%2~%{$FG[$prompt_low_contrast_color]%}%(!.#.$)%{$FX[reset]%}"
RPROMPT="\$(promptinfo_git_status)\${vcs_info_msg_0_}%{$FX[reset]%}"
