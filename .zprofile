if [ -f ~/.zshrc ]; then
   source ~/.zshrc
fi

# Setting PATH for Python 3.6
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export PATH="$HOME/.cargo/bin:$PATH"
