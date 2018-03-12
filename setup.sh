#!/bin/bash

set -e

GITROOT=$(git rev-parse --show-toplevel)
DOTFILESDIR="$GITROOT"

# bash
if ! grep -q DOTFILESDIR $HOME/.bashrc; then
    echo "export DOTFILESDIR=$GITROOT"           >> $HOME/.bashrc
    echo "source \$DOTFILESDIR/bash/ps1.rc"      >> $HOME/.bashrc
    echo "source \$DOTFILESDIR/bash/sshagent.rc" >> $HOME/.bashrc
fi

# vim
if [ ! -f $HOME/.vimrc ]; then
    ln -s $DOTFILESDIR/vimrc $HOME/.vimrc
fi
if [ ! -d $HOME/.vim ]; then
    ln -s $DOTFILESDIR/vim $HOME/.vim
fi

# ssh-agent via systemd user service
mkdir -p $HOME/.config/systemd/user
cp $DOTFILESDIR/systemd/ssh-agent.service $HOME/.config/systemd/user
systemctl --user enable ssh-agent
systemctl --user start ssh-agent

# ssh config
if [ ! -f $HOME/.ssh/config ]; then
    cp $DOTFILESDIR/ssh/config $HOME/.ssh/config
fi

# tmux
if [ ! -f $HOME/.tmux.conf ]; then
    ln -s $DOTFILESDIR/tmux.conf $HOME/.tmux.conf
fi

# tig
if [ ! -f $HOME/.tigrc ]; then
    ln -s $DOTFILESDIR/tigrc $HOME/.tigrc
fi
if [ ! -d $HOME/.config/tig ]; then
    ln -s $DOTFILESDIR/tig $HOME/.config/tig
fi
