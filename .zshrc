#スペルミスをチェックする
setopt correct

#beepを無効にする
setopt no_beep

#日本語ファイル名を表示可能にする
setopt print_eight_bit

#cdコマンド実行後lsを実行
function cd (){
builtin cd $@ && ls;
}

#History
export HISTFILE=~/.zsh_histry
HISTSIZE=1000
SAVAHIST=1000

#プロンプトを設定する
autoload -U promptinit
promptinit
autoload colors
colors

PROMPT="[%{$fg[yellow]%}%n%{$reset_color%}@~%d]#"
RPROMPT="[%{$fg[green]%}%D %*%{$reset_color%}]"

#export PATH="HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#beep音を消す
setopt no_beep
#JAVA文字化けのをなくすためにutf-8
alias javac="javac -J-Dfile.encoding=UTF-8"
alias java="java -Dfile.encoding=UTF-8"


#ls
alias ls="ls -G" # color for darwin
alias l="ls -la"
alias la="ls -la"
alias l1="ls -1"

#emacs 
alias emacs="emacs -nw"
