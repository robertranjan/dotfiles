# dotfiles
basic dotfiles

How to download bashrc using curl -

	bashrc:	 	https://raw.githubusercontent.com/robertranjan/dotfiles/master/bashrc
	tmux.conf:	https://raw.githubusercontent.com/robertranjan/dotfiles/master/tmux.conf

Generate download URL link:

	1. Navigate to file in github and get the url - sample - https://github.com/robertranjan/dotfiles/blob/master/bashrc
	2. Convert github.com => raw.githubusercontent.com
	3. remove blob from url

Generate download link using few quick substitutions:

    $ URL="https://github.com/robertranjan/dotfiles/blob/master/bashrc"
    $ echo $URL | sed 's#github.com#raw.githubusercontent.com#g; s#/blob/#/#g'

Apply to bash shell:

    curl -k https://raw.githubusercontent.com/robertranjan/dotfiles/master/bashrc >> ~/mybashrc 2> /dev/null
    echo "source ~/mybashrc" >> ~/.bashrc
    curl -k https://raw.githubusercontent.com/robertranjan/dotfiles/master/tmux.conf > ~/.tmux.conf 2> /dev/null
    curl -k https://raw.githubusercontent.com/robertranjan/dotfiles/master/vimrc >> ~/.vimrc 2> /dev/null
    source ~/.bashrc

set tmux copy mode to vi: 

    send prefix :setw -g mode-keys vi
    send prefix :set-window-option -g mode-keys vi

more tmux setup/view options:

		:show-option -wg 	; show current options

		:set-option -g prefix C-a		; set C-a prefix
		:unbind-key C-b
		:bind-key a send-prefix


		:set-option -g display-time 4000 	; notification display time to 4000ms
		:show-messages 										; show all recent messages in a screen

Resize tmux panes:

    # Resize the current pane using Alt + direction
    bind -n M-k resize-pane -U 5
    bind -n M-j resize-pane -D 5
    bind -n M-h resize-pane -L 5
    bind -n M-l resize-pane -R 5
