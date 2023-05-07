### REPLACE ORIGINAL PROMPT WITH GIT BRANCH

function parse_git_branch {
    ## Shows current git branch if any.

    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
# This replaces the original IF
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi
unset color_prompt force_color_prompt

### ADD ALL UNDER THIS LINE

export TERM=xterm-256color

function volume {
    ## Sets volume. Options:
    ## * `n%`
    ## * `on`
    ## * `off`
    ## * `n%-`
    ## * `n%+`

    local val=$1

    amixer -D pulse sset Master $val
}
