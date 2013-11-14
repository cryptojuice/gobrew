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

###Commands
-----------

#####: gobrew install
Install a specified version of Go.

        $ gobrew install 1.1.2
        
#####: gobrew uninstall
        $ gobrew uninstall 1.1.2

#####: gobrew use
Sets which version of Go to use globally.

        $ gobrew use 1.1.2
        
#####: gobrew workspace
Note: gobrew workspace alone specifies the currently set workspace. Use 'gobrew workspace' set to set workspace as $GOPATH and 'gobrew workspace unset' to remove.

        $ cd /path/to/workspace
        $ gobrew workspace set
        $ gobrew workspace unset
        
        
        
