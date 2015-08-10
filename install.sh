# Remove previously installed symbolic links
if [ -L "$HOME/.vimrc" ]; then
  rm -f ~/.vimrc
fi
if [ -L "/usr/local/bin/mkctags.sh" ]; then
  rm -f /usr/local/bin/mkctags.sh
fi
if [ -L "/usr/local/bin/mkcscope.sh" ]; then
  rm -f /usr/local/bin/mkcscope.sh
fi

# Create new symbolic links 
ln -s `pwd`/vimrc $HOME/.vimrc
ln -s ./mkctags.sh /usr/local/bin/mkctags.sh
ln -s ./mkcscope.sh /usr/local/bin/mkcscope.sh
