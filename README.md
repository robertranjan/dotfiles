# dotfiles
basic dotfiles

How to download bashrc using curl -

	bashrc:	 	https://raw.githubusercontent.com/robertranjan/dotfiles/master/bashrc
	tmux.conf:	https://raw.githubusercontent.com/robertranjan/dotfiles/master/tmux.conf

Generate download link:

	1. Navigate to file in github and get the url - sample - https://github.com/robertranjan/dotfiles/blob/master/bashrc
	2. Convert github.com => raw.githubusercontent.com
	3. remove blob from url

Generate download link using few quick substitutions:

    $ URL="https://github.com/robertranjan/dotfiles/blob/master/bashrc"
    $ echo $URL | sed 's#github.com#raw.githubusercontent.com#g; s#/blob/#/#g'
