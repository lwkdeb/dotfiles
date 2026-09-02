if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    fastfetch --config ~/.config/fastfetch/8.jsonc
    alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
    alias update "sudo pacman -Syu"
    alias update-noctalia="cd ~/noctalia; and git pull; and just build release; and sudo just install release"
    #alias btop "btop --force-utf"
    alias ff="fastfetch"
end

starship init fish | source

thefuck --alias | source
