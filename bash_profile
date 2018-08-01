alias sonarpreview="mvn -Psonar-preview -DskipTests"
alias mvntest='mvn -o test -Dtest.fork.count=1C'
export PATH=/usr/local/bin:$PATH:/usr/local/sbin:~/apps/apache-maven-3.3.9/bin:~/apps/groovy-2.4.12/bin:~/apps/bin:~/go/bin
export MAVEN_OPTS="-XX:-UseConcMarkSweepGC -Xmx2048m"

alias gitchangepassword="git credential-osxkeychain erase"
alias javahome="/usr/libexec/java_home"

# Use java 8 if you want 9 can run this with 1.9 
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
alias jshell="/Library/Java/JavaVirtualMachines/jdk-10.jdk/Contents/Home/bin/jshell"

function b64decode() { 
 echo "$1" | base64 --decode 
}

# https://stedolan.github.io/jq/download/ jq json command line processor

export NVM_DIR="/Users/hanakr/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

function npm-do { (PATH=$(npm bin):$PATH; eval $@;) } # allows running executables that were locally installed (aka without global)

# Tail system log
alias tailsys="tail -f /var/log/system.log"

# Load git completion
# source ~/.git-completion.bash

# Bash git prompt, shows current branch
# Simple bash prompt
# source ~/.bash_git_prompt.sh
# Bash-git-prompt github
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Git log pretty
alias glg="git log --stat --decorate --graph"

export PATH="$HOME/.cargo/bin:$PATH"
export SANDBOX_HOST=localhost
