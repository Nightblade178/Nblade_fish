if status is-interactive
    # temperature alias
    alias temp="watch -c -b -d -n 1 -- 'vcgencmd measure_temp'"

    # ls/grep colors
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

    bind ctrl-alt-h backward-kill-word
    bind alt-delete backward-kill-word
    bind ctrl-c cancel-commandline
    bind ctrl-alt-backspace backward-kill-word

    starship init fish | source

    if type -q dircolors
        if test -r ~/.dircolors
            set -gx LS_COLORS (dircolors -b ~/.dircolors | string match -r "'(.*)'" -g)
        else
            set -gx LS_COLORS (dircolors -b | string match -r "'(.*)'" -g)
        end
    end
end

# .local/bin/env equivalent
test -f "$HOME/.local/bin/env.fish"; and source "$HOME/.local/bin/env.fish"

#if status is-interactive
#    if set -q SSH_CONNECTION; and not set -q TMUX
#        if tmux has-session 2>/dev/null
#            exec tmux attach-session
#        else
#            exec tmux new-session
#        end
#    end
#end

# opencode
fish_add_path /home/pi/.opencode/bin
set -gx EDITOR nvim

# rust
source "$HOME/.cargo/env.fish"

# fxf find fish integeration
fzf --fish | source
