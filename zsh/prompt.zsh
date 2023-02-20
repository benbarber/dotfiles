autoload colors && colors
# Cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_refs () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
 echo "${ref#refs/heads/}"
}

git_status() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain --untracked no) == "" ]]
    then
      echo "%{$fg_bold[green]%}$(git_refs)%{$reset_color%}"
    else
      echo "%{$fg_bold[red]%}$(git_refs)%{$reset_color%}"
    fi
  fi
}

# This assumes that you always have an origin named `origin`, and that you only
# care about one specific origin. If this is not the case, you might want to use
# `$git cherry -v @{upstream}` instead.
git_commits_ahead () {
  if [ $($git rev-parse --is-inside-work-tree 2>/dev/null) ]
  then
    number=$($git cherry -v origin/$(git symbolic-ref --short HEAD) 2>/dev/null | wc -l | bc)

    if [[ $number == 0 ]]
    then
      echo ""
    else
      echo " +%{$fg_bold[magenta]%}$number%{$reset_color%}"
    fi
  fi
}

git_prompt() {
  if $(! $git status -s &> /dev/null)
  then 
    echo ""
  else
    echo "%{$fg_bold[white]%}(%{$reset_color%}$(git_status)$(git_commits_ahead)%{$fg_bold[white]%})%{$reset_color%}"
  fi
}

directory_prompt() {
  echo "%{$fg_bold[white]%}%~%{$reset_color%}"
}

battery_status_prompt() {
  if test ! "$(uname)" = "Darwin"
  then
    exit 0
  fi

  if [[ $(sysctl -n hw.model) == *"Mac"* ]]
  then
    $XDG_CONFIG_HOME/bin/battery-status
  fi
}

export PROMPT=$'\n$(directory_prompt) $(git_prompt)\n› '

set_prompt () {
  export RPROMPT="%{$fg_bold[white]%}%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}