set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1

set -g __fish_git_prompt_color_branch magenta --bold
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
set -g __fish_git_prompt_color_cleanstate green --bold

eval (python -m virtualfish)

function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    if set -q VIRTUAL_ENV
        echo -n -s (set_color cyan) "#" (basename "$VIRTUAL_ENV") (set_color normal) " "
    end

    set_color yellow
    printf '%s' (whoami)
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

alias g hub

set PATH ~/bin ~/.local/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/local/sbin
set -xg JAVA_HOME (/usr/libexec/java_home)
set -xg PYTHONPATH "/usr/local/ansible/lib:/usr/local/ansible"
set -xg PIP_REQUIRE_VIRTUALENV true
set -xg VIRTUAL_ENV_DISABLE_PROMPT 0
set -xg LC_ALL en_US.UTF-8
set -xg LANG en_US.UTF-8
set -xg CFLAGS "-I"(xcrun --show-sdk-path)"/usr/include"
