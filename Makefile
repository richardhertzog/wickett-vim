clean:
	rm -rf ~/.vim/bundle
	rm -rf ~/.vim/plugged

config:
	ln -sf ~/.vim/vimrc ~/.vimrc
	ln -sf ~/.vim/vimrc.local ~/.vimrc.local
	ln -sf ~/.vim/vimrc.local.bundles ~/.vimrc.local.bundles

install: clean config
	vim +PlugInstall +qall

update: clean install

clean-all: clean
	rm -rf ~/.vim/autoload
