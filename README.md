# dotfiles
Personal Dotfiles

Dependencies:
- ZSH
- oh-my-zsh
- vim, gvim
- oh-my-zsh autosuggestions
- tmux

How to pull: https://www.atlassian.com/git/tutorials/dotfiles

Tmux config I used: https://github.com/samoshkin/tmux-config (has keybinds)
Vim config I used: 

Theme: Ayu, Mirage

## Iterm2 automatically launch tmux:

Create a profile with `tmux attach || tmux new -s main` in your default profile's `Command->Login Shell->send text as start` line
