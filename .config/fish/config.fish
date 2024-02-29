if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

pixi completion --shell fish | source
pixi run --manifest-path $HOME/.local/share/termenv/pixi.toml pixi-termenv-fish-completion | source
eval "$(pixi shell-hook --manifest-path ~/.local/share/termenv/pixi.toml)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /var/home/jack/conda/bin/conda
    eval /var/home/jack/conda/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/var/home/jack/conda/etc/fish/conf.d/conda.fish"
        . "/var/home/jack/conda/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/var/home/jack/conda/bin" $PATH
    end
end
# <<< conda initialize <<<

