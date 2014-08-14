set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1

set -g __fish_git_prompt_color_branch magenta bold
set -g __fish_git_prompt_showupstream "informative"
set -g __fish_git_prompt_char_upstream_ahead "↑"
set -g __fish_git_prompt_char_upstream_behind "↓"
set -g __fish_git_prompt_char_upstream_prefix ""

set -g __fish_git_prompt_char_stagedstate "●"
set -g __fish_git_prompt_char_dirtystate "✚"
set -g __fish_git_prompt_char_untrackedfiles "…"
set -g __fish_git_prompt_char_conflictedstate "✖"
set -g __fish_git_prompt_char_cleanstate "✔"

set -g __fish_git_prompt_color_dirtystate blue
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
set -g __fish_git_prompt_color_cleanstate green bold

function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    if test $VIRTUAL_ENV
        set_color cyan
        printf "(%s) " (basename $VIRTUAL_ENV)
        set_color normal
    end

    set_color yellow
    printf '%s' (whoami)
    set_color normal
    printf ' at '

    set_color magenta
    printf '%s' (hostname|cut -d . -f 1)
    set_color normal
    printf ' in '

    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)
    set_color normal

    printf '%s ' (__fish_git_prompt)

    # Line 2
    echo

    if not test $last_status -eq 0
        set_color $fish_color_error
    end

    printf '↪ '

    set_color normal
end

set PATH ~/bin /usr/local/ansible/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/local/sbin /opt/X11/bin
set -xg JAVA_HOME (/usr/libexec/java_home)
set -xg PYTHONPATH "/usr/local/ansible/lib:/usr/local/ansible"
set -xg ANSIBLE_LIBRARY "/usr/local/ansible/library"
set -xg MANPATH "/usr/local/ansible/docs/man"
set -xg VIRTUAL_ENV_DISABLE_PROMPT 0
