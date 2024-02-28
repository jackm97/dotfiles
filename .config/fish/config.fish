if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

pixi completion --shell fish | source
pixi run --manifest-path $HOME/.local/share/termenv/pixi.toml pixi-termenv-fish-completion | source
eval "$(pixi shell-hook --manifest-path ~/.local/share/termenv/pixi.toml)"
