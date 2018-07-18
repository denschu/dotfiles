# Load the shell .dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/.{exports,aliases,bash_prompt}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Enable Shell integration for iTerm2
# http://iterm2.com/shell_integration.html
if [[ -s "$HOME/.iterm2_shell_integration.bash" ]]; then
  source "$HOME/.iterm2_shell_integration.bash";
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

ssh-add -A
