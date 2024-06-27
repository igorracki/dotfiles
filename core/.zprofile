#eval "$(/opt/homebrew/bin/brew shellenv)"
#eval "$(oh-my-posh --init --shell zsh --config /opt/homebrew/opt/oh-my-posh/themes/slimfat.omp.json)"
#eval "$(oh-my-posh --init --shell bash --config /opt/homebrew/opt/oh-my-posh/themes/catppuccin_mocha.omp.json)"
user_dir="$(echo ~)"
export JAVA_HOME=/opt/homebrew/opt/openjdk@21
export PATH="$PATH:/opt/apache-maven-3.5.3/bin"
export PATH="$PATH:$user_dir/.config/nmvn"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
