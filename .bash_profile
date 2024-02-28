# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export PATH="$HOME/.local/bin:$PATH"

export PATH="$HOME/.pixi/bin:$PATH"
export PATH=$PATH:/var/home/jack/.pixi/bin
