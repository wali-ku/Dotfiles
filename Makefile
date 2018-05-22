.PHONY: server
server:
	ln -s ~/gits/Dotfiles/server-tmux.conf ~/.tmux.conf

.PHONY: mac
mac:
	ln -s ~/gits/Dotfiles/mac-tmux.conf ~/.tmux.conf

.PHONY: vim
vim:
	ln -s ~/gits/Dotfiles/vimrc ~/.vimrc
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
	mkdir -p ~/.vim/colors/
	ln -s ~/gits/Dotfiles/david-scheme.vim ~/.vim/colors/david-scheme.vim

git: gitconfig
	ln -s ~/gits/Dotfiles/gitconfig ~/.gitconfig

.PHONY: i3
i3: .i3.config
	mkdir -p ~/.i3/
	ln -s ~/gits/Dotfiles/.i3.config ~/.i3/config

.PHONY: clean
clean:
	rm -rf ~/.vim
	rm -f ~/.vimrc
	rm -f ~/.tmux.conf

