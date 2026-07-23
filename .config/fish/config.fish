if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    fastfetch --config ~/.config/fastfetch/8.jsonc
    alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
    alias update "sudo pacman -Syu"
    #alias btop "btop --force-utf"
end

starship init fish | source
