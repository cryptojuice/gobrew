gobrew
======

gobrew lets you easily switch between multiple versions of go. It is based on [rbenv](https://github.com/sstephenson/rbenv) and [pyenv](https://github.com/yyuu/pyenv).

<img src="http://i.imgur.com/fHgvWnN.png" width="650">

###Installation
---------------

1. Check out gobrew where you want it installed. 

        $ cd
        $ git clone git://github.com/grobins2/gobrew.git ~/.gobrew
       
2.  Add the following to your shell config. 

        export PATH="$HOME/.gobrew/bin:$PATH"
        eval "$(gobrew init -)"
    Note:
    * BASH: Add this to ~/.bashrc (~/.bash_profile for Ubuntu users).
    
    * ZSH: Add this to ~/.zshenv
    
3. Close and reopen shell window.

###Usage
--------

1. Install a version of Go. Go versions are installed to ~/.gobrew/versions/.
2. Choose what version of Go to use.
3. Optional: Set your go workspace 

Note: replace N.N.N with go version number.

        $ gobrew install N.N.N
        $ gobrew use N.N.N
        $ cd /path/to/myworkspace
        $ gobrew workspace set
        
