local blue=%{$fg[blue]%}
local cyan=%{$fg[cyan]%}
local green=%{$fg_bold[green]%}
local red=%{$fg_bold[red]%}
local yellow=%{$fg[yellow]%}
local reset=%{$reset_color%}

local ret_status="%(?:${green}➜ :${red}➜ )"
local ret_status=""

PROMPT='${ret_status} ${cyan}%~${reset} $(git_prompt_info) '

ZSH_THEME_GIT_PROMPT_PREFIX="${blue}("
ZSH_THEME_GIT_PROMPT_DIRTY=") ${yellow}●${blue}"
ZSH_THEME_GIT_PROMPT_CLEAN=")"

ZSH_THEME_GIT_PROMPT_SUFFIX="${reset}"

RPROMPT=""
