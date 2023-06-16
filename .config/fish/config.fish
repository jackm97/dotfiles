if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/jack/mambaforge/bin/conda
    eval /home/jack/mambaforge/bin/conda "shell.fish" hook $argv | source
end
# <<< conda initialize <<<

conda deactivate
