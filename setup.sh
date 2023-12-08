#!/bin/zsh

BASE=~/.dotfiles
CONF=$BASE/configs
CG=~/.config

for file in $CONF/.*;
do
	ln -sfv $file ~/;
done

echo "\n\nfor $CG"
mkdir -p $CG/betterlockscreen
ln -sfv $CONF/betterlockscreen/betterlockscreenrc $CG/betterlockscreen
mkdir -p $CG/calcure
ln -sfv $CONF/calcure/config.ini $CG/calcure
mkdir -p $CG/dunst
ln -sfv $CONF/dunst/dunstrc $CG/dunst
mkdir -p $CG/i3
ln -sfv $CONF/i3/config $CG/i3
mkdir -p $CG/kitty
ln -sfv $CONF/kitty/kitty.conf $CG/kitty
mkdir -p $CG/lvim
ln -sfv $CONF/lvim/config.lua $CG/lvim
mkdir -p $CG/nano
ln -sfv $CONF/nano/nanorc $CG/nano
mkdir -p $CG/xplr
ln -sfv $CONF/xplr/init.lua $CG/xplr

mkdir -p ~/.screenlayout
ln -sfv $CONF/screenlayout/default.sh ~/.screenlayout

mkdir -p $CG/aerc
ln -sfv $CONF/aerc/aerc.conf $CG/aerc
ln -sfv $CONF/aerc/binds.conf $CG/aerc
cp -i $CONF/aerc/accounts.conf $CG/aerc/accounts-example.conf

mkdir -p $CG/polybar
ln -sfv $CONF/polybar/config.ini $CG/polybar
ln -sfv $CONF/polybar/launch.sh $CG/polybar

mkdir -p $CG/ranger
ln -sfv $CONF/ranger/commands.py $CG/ranger
ln -sfv $CONF/ranger/rc.conf $CG/ranger
ln -sfv $CONF/ranger/rifle.conf $CG/ranger
ln -sfv $CONF/ranger/scope.sh $CG/ranger

mkdir -p ~/bin
ln -sfv $CONF/bin/monitorToggle ~/bin
ln -sfv $CONF/bin/udiskie-run ~/bin
