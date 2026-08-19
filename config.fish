if status is-interactive
    # temperature alias
    alias temp="watch -c -b -d -n 1 -- 'vcgencmd measure_temp'"

    # ls/grep colors
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
    alias less 'batcat --paging=always'
    alias ls 'eza -g --color=auto --group-directories-first'
    alias ll 'eza -lg --git --icons'
    alias lt 'eza -g --tree --icons'
    alias vi nvim
    alias clip='xclip -selection c'

    # fun stuff
    alias matrix="cmatrix -b"
    alias stegosaurus="cowsay  -f /usr/share/cowsay/cows/stegosaurus.cow"

    abbr -a du "sudo dust"
    abbr -a df "sudo duf"
    abbr -a shutdown "sudo shutdown"
    abbr -a reboot "sudo reboot"
    abbr -a fdisk "sudo fdisk"
    abbr -a openrgb "sudo openrgb"
    abbr -a intel_gpu_top "sudo intel_gpu_top"

    bind ctrl-alt-h backward-kill-word
    bind alt-delete backward-kill-word
    bind ctrl-c cancel-commandline
    bind ctrl-alt-backspace backward-kill-word

    # Fish cycle commands
    bind alt-k up-or-search
    bind alt-j down-or-search

    #### DEFAULT ZSH/BASH SHORTCUT ####
    # ctrl f to go forward one character
    # ctrl b to go backward one character
    # alt f to go foward one word
    # alt b to go backward one word

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

# opencode
fish_add_path ~/.opencode/bin
set -gx EDITOR nvim
set -Ux SUDO_EDITOR nvim

# rust
#source "$HOME/.cargo/env.fish"

# Zioxide
fish_add_path ~/.local/bin
zoxide init fish | source

# fxf find fish integeration
fzf --fish | source

# Fish catppuccin-frappe theme
fish_config theme choose custom
