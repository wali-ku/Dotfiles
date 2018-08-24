.PHONY: server
server:
	ln -s ${PWD}/server-tmux.conf ~/.tmux.conf

.PHONY: mac
mac:
	ln -s ${PWD}/mac-tmux.conf ~/.tmux.conf

.PHONY: vim
vim:
	ln -s ${PWD}/vimrc ~/.vimrc
	mkdir -p ~/.vim/colors/
	ln -s ${PWD}/david-scheme.vim ~/.vim/colors/david-scheme.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall

git: gitconfig
	ln -s ${PWD}/gitconfig ~/.gitconfig

.PHONY: i3
i3: .i3.config
	mkdir -p ~/.i3/
	ln -s ${PWD}/.i3.config ~/.i3/config

.PHONY: clean
clean:
	rm -rf ~/.vim
	rm -f ~/.vimrc
	rm -f ~/.tmux.conf

