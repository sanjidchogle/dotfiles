# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
mount-cifs() {
    sudo mount.cifs -o user=schogle,domain=nvidia.com $1 $2
}
mount-wsqa() {
    mount-cifs //netapp-pu02/gpu_sw_wsqa_twinpeaks/ /mnt/wsqa_twinpeaks
}
# Create a new directory and enter it
function mk() {
  mkdir -p "$@" && cd "$@"
}

# Alias
alias ls="ls -la"       # List in long format, include dotfiles
alias ld="ls -ld */"   # List in long format, only directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
