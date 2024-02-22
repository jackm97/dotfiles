if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /var/home/jack/miniforge3/bin/conda
    eval /var/home/jack/miniforge3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/var/home/jack/miniforge3/etc/fish/conf.d/conda.fish"
        . "/var/home/jack/miniforge3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /var/home/jack/miniforge3/bin $PATH
    end
end
# <<< conda initialize <<<

if test -f /home/gpu-dev/.bashrc
    bass source /home/gpu-dev/.bashrc
end

set -x PATH $HOME/.pixi/bin $PATH
pixi completion --shell fish | source
