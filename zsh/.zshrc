# Path to your oh-my-zsh installation.
export ZSH=/Users/kgthegreat/.oh-my-zsh
export HOMEBREW_GITHUB_API_TOKEN=12df28992d020c9224394b4e652228a31a7f2264
export JAVA_HOME=`/usr/libexec/java_home`
export MULE_HOME=/Users/kgthegreat/installs/mule-standalone-3.5.0
export PATH="/usr/local/sbin:$PATH"
#export GROOVY_HOME=/usr/local/opt/groovy/libexec
#export GRAILS_HOME=/usr/local/opt/grails/libexec
#/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT=true

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git golang)

# User configuration

export PATH=$PATH:"/Users/kgthegreat/.rvm/gems/ruby-2.2.3@blog/bin:/Users/kgthegreat/.rvm/gems/ruby-2.2.3@global/bin:/Users/kgthegreat/.rvm/rubies/ruby-2.2.3/bin:/Users/kgthegreat/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin

source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Blog related
alias pubsetup="ga _posts/2015-09-19-dev-setup-osx.md && gcmsg 'Updated post' && ggpush"
alias pubemacs="ga _posts/2015-09-20-towards-a-better-emacs.md && gcmsg 'Updated post' && ggpush"

# Programming related
alias ya="yarn add"
alias yad="yarn add --dev"

# emacs related
alias ed="emacs --daemon"
alias ec="emacsclient -t"
alias ek="emacsclient -e '(kill-emacs)'"

# grails related
alias grap="grails run-app --port=8090"
alias gsap="grails stop-app --port=8090"
alias gtap="grails test-app"

# zsh related
alias zl="source ~/.zshrc"

# ssh related
# Integration
alias digo="ssh kumar@192.241.139.30"

alias intg="ssh ec2-user@52.192.255.187"
alias intglog="ssh -t ec2-user@52.192.255.187 'tail -f ~tomcat/logs/catalina.out -n 100'"
alias intgadd='cat ~/code/cag/tmp/add_ssh | intg "cat >> ~/.ssh/authorized_keys"'

alias intghk="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.69.46.97"
alias intghklog="intghk 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias intgno="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.58.128.77"
alias intgnolog="intgno 'tail -f ~tomcat/logs/catalina.out -n 1000'"

alias intgsg="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.197.89.202"
alias intgsglog="intgsg 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias intgtw="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.197.68.155"
alias intgtwlog="intgtw 'tail -f ~tomcat/logs/catalina.out -n 3000'"

alias intgfi="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.29.226.9"
alias intgfilog="intgfi 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias intgdk="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@35.156.13.17"
alias intgdklog="intgdk 'tail -f ~tomcat/logs/catalina.out -n 500'"

alias intgpt="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.58.55.3"
alias intgptlog="intgpt 'tail -f ~tomcat/logs/catalina.out -n 500'"

alias alf="ssh ubuntu@10.0.110.85"
alias alflog="ssh -t ubuntu@10.0.110.85 'tail -f /opt/alfresco-5.0.d/tomcat/logs/catalina.out -n 500'"
alias alfadd='cat ~/code/cag/tmp/add_ssh | alf "cat >> ~/.ssh/authorized_keys"'

alias alfeu="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.58.81.1"
alias alfeulog="alfeu -t 'tail -f /opt/alfresco/alfresco-5.0.d/tomcat/logs/catalina.out -n 100'"

alias alfasia="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.196.35.54"
alias alfasialog="alfasia -t 'tail -f /opt/alfresco/alfresco-5.0.d/tomcat/logs/catalina.out -n 1000'"

alias alfhk="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.196.54.110"
alias alfhklog="alfhk -t 'tail -f /opt/alfresco-5.0.d/tomcat/logs/catalina.out -n 5000'"

alias alfsb="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.196.206.139"
alias alfsblog="alfsb -t 'tail -f /opt/alfresco/alfresco-5.0.d/tomcat/logs/catalina.out -n 100'"

#alias alfadd='cat ~/code/cag/tmp/add_ssh | alf "cat >> ~/.ssh/authorized_keys"'

alias pre="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.28.13.0"
alias prelog="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.28.13.0 -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

#alias prehk="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.196.86.85"
alias prehk="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@13.112.70.244"
alias prehklog="prehk -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias dataap="ssh -i ~/code/cag/tmp/big-query-2-S3.pem.txt ec2-user@52.198.121.149"
alias dataeu="ssh -i ~/code/cag/tmp/big-query-2-S3.pem.txt ec2-user@52.57.30.154"
alias datasa="ssh -i ~/code/cag/tmp/big-query-2-S3.pem.txt ec2-user@52.67.52.189"
alias testdata="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.192.17.42"

alias preno="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.29.186.3"
alias prenolog="preno -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias presg="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.196.145.31"
alias presglog="presg -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias prefi="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.58.22.35"
alias prefilog="prefi -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias pretw="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.192.250.36"
alias pretwlog="pretw -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias predk="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.28.119.88"
alias predklog="predk -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias staghk="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.198.232.71"
alias staghklog="staghk -t 'tail -f ~tomcat/logs/catalina.out -n 1000'"

alias stagno="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.58.123.239"
alias stagnolog="stagno -t 'tail -f ~tomcat/logs/catalina.out -n 1000'"

alias stagsg="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@13.113.142.197"
alias stagsglog="stagsg -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias stagbe="ssh ec2-user@52.193.21.134"
alias stagbelog="stagbe -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias stagtw="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.193.134.200"
alias stagtwlog="stagtw -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias stagdk="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.57.157.42"
alias stagdklog="stagdk -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias wcp="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.192.57.189"
alias wcplog="stagtw -t 'tail -f ~tomcat/logs/catalina.out -n 1000'"


#alias stagfi="ssh ec2-user@52.193.21.134"
#alias stagfilog="stagfi -t 'tail -f ~tomcat/logs/catalina.out -n 100'"


alias qa="ssh ec2-user@52.192.94.176"
alias qalog="ssh -t ec2-user@52.192.94.176 'tail -f ~tomcat/logs/catalina.out -n 100'"
alias qaadd='cat ~/code/cag/tmp/add_ssh | qa "cat >> ~/.ssh/authorized_keys"'

alias qahk="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.192.172.183"
alias qahklog="qahk 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias qadk="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.28.68.12"
alias qadklog="qadk 'tail -f ~tomcat/logs/catalina.out -n 500'"

alias qatw="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.196.222.217"
alias qatwlog="qatw 'tail -f ~tomcat/logs/catalina.out -n 500'"

alias qasg="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.68.154.72"
alias qasglog="qasg 'tail -f ~tomcat/logs/catalina.out -n 500'"


alias fkey="ssh ec2-user@52.192.130.202"
alias fkeylog="fkey -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias fkeyhk="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.196.147.229"
alias fkeyhklog="fkeyhk -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias prodbe="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.57.100.119"
alias prodbelog="prodbe -t 'tail -f ~tomcat/logs/catalina.out -n 1000'"

alias prodhk="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.197.74.196"
alias prodhklog="prodhk -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias prodhk2="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.196.74.75"
alias prodhk2log="prodhk2 -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias prodhk3="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.197.128.144"
alias prodhk3log="prodhk3 -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias prodsg="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.197.220.127"
alias prodsglog="prodsg -t 'tail -f ~tomcat/logs/catalina.out -n 1000'"

alias prodbsg="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.197.175.1"
alias prodbsglog="prodbsg -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias prodno="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.28.102.4"
alias prodnolog="prodno -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias proddk="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.57.126.233"
alias proddklog="proddk -t 'tail -f ~tomcat/logs/catalina.out -n 100'"

alias proddk2="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.57.232.119"
alias proddk2log="proddk2 -t 'tail -f ~tomcat/logs/catalina.out -n 100'"


alias prodtw="ssh -i ~/code/cag/tmp/ciab.pem.txt ec2-user@52.197.198.49"
alias prodtwlog="prodtw -t 'tail -f ~tomcat/logs/catalina.out -n 1000'"

# navigation related
alias ciab="cd ~/code/cag/ciab/ciab-plugin"
alias base="cd ~/code/cag/ciab/ciab-plugin/ciab-base"
alias core="cd ~/code/cag/ciab/ciab-plugin/ciab-core"
alias cc="cd ~/code/cag/ciab/ciab-plugin/ciab-creditcard"
alias pl="cd ~/code/cag/ciab/ciab-plugin/ciab-personalloan"
alias td="cd ~/code/cag/ciab/ciab-plugin/ciab-timedeposit"
alias bb="cd ~/code/cag/ciab/ciab-plugin/ciab-broadband"
alias ci="cd ~/code/cag/ciab/ciab-plugin/ciab-carinsurance"
alias cust="cd ~/code/cag/ciab/ciab-plugin/ciab-customer-cloud"
alias repo="cd ~/code/cag/ciab/ciab-alfresco-repo"
alias share="cd ~/code/cag/ciab/ciab-alfresco-share"
alias widget="cd ~/code/cag/ciab/cgg-widget-cc"
alias config="cd ~/code/cag/ciab/ciab-config-repo"
alias corejs="cd ~/code/cag/ciab/cgg-core-js"
alias funnel="cd ~/code/cag/ciab/cgg-collector-widget"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/kgthegreat/.sdkman"
[[ -s "/Users/kgthegreat/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/kgthegreat/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
        local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

        if [ "$nvmrc_node_version" = "N/A" ]; then
            nvm install
        elif [ "$nvmrc_node_version" != "$node_version" ]; then
            nvm use
        fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
        echo "Reverting to nvm default version"
        nvm use default
    fi
    
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
