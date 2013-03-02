# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="re5et"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
alias agent="ssh -Nf -D 7070 user10098@s8.usassh.com"
alias sina_td="ssh -p 11164 root@7niizg787p.elb4.sinasws.com"
alias dev_u2="ssh ustack@192.168.1.2"
alias dev_u4="ssh ustack@192.168.1.4"
alias dev_u3="ssh root@192.168.1.3"
alias dev_u5="ssh root@192.168.1.5"
alias dev_my="ssh ubuntu@192.168.122.89"
alias dev_myt="ssh pure@192.168.122.89"
alias dev_o="ssh ustack@superustack.oicp.net"
alias vm_dev="sudo kvm -smp 4 -m 4096 -hda /home/jim/Mirror/mirror/dev_env.qcow2 -net nic -net tap"
alias vm_pure="sudo kvm -smp 2 -m 4096 -hda /media/STUDY/release/openstack_new.qcow2 -net nic -net tap"
