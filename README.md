gobrew
======

gobrew lets you easily switch between multiple versions of go. It is based on [rbenv](https://github.com/sstephenson/rbenv) and [pyenv](https://github.com/yyuu/pyenv).

<img src="http://i.imgur.com/MBzShbh.png" width="650">

### Installation
---------------

#### The automatic installer
----------------------------

  You can install this via the command line with either `curl` or `wget`.

  __via `curl`__

  curl -L https://raw.github.com/grobins2/gobrew/master/tools/install.sh | sh

  __via `wget`__

  wget --no-check-certificate https://raw.github.com/grobins2/gobrew/master/tools/install.sh -O - | sh


#### The manual way
------------------

1. Check out gobrew where you want it installed.

        $ git clone git://github.com/cryptojuice/gobrew.git ~/.gobrew

2. Add the following to your shell config.

        export PATH="$HOME/.gobrew/bin:$PATH"
        eval "$(gobrew init -)"
    Note:
    * BASH: Add this to ~/.bashrc (~/.bash_profile for Ubuntu users).

    * ZSH: Add this to ~/.zshenv

3.  Source your shell config file (or reopen shell session).

### Commands
-----------

##### : gobrew install
Install a specified version of Go.

        $ gobrew install 1.5

##### : gobrew uninstall
        $ gobrew uninstall 1.5

##### : gobrew use
Sets which version of Go to use globally.

        $ gobrew use 1.5

##### : gobrew workspace
Note: 'gobrew workspace' echos the currently set workspace ($GOPATH). Use 'gobrew workspace set' to set your $GOPATH to the current working directory. Use 'gobrew workspace unset' to remove this setting.

        $ cd /path/to/workspace
        $ gobrew workspace set
        $ gobrew workspace unset

Visit [http://golang.org/doc/code.html#Workspaces](http://golang.org/doc/code.html#Workspaces) for more on workspaces.

### Useful

#### Updates

To upgrade run update script from .gobrew source with:
        $ cd ~
        $ ./.gobrew/tools/upgrade.sh

#### Uninstalling

  If you want to uninstall it, just run

        $ cd ~
        $ ./.gobrew/tools/uninstall.sh

  from the command line and it’ll remove itself.

