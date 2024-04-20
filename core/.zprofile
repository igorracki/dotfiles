eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh --init --shell bash --config /opt/homebrew/opt/oh-my-posh/themes/slimfat.omp.json)"
#eval "$(oh-my-posh --init --shell bash --config /opt/homebrew/opt/oh-my-posh/themes/catppuccin_mocha.omp.json)"

export JAVA_HOME=/opt/homebrew/opt/openjdk@21/libexec/openjdk.jdk/Contents/Home/
export PATH="$PATH:/opt/homebrew/bin/mvn"
