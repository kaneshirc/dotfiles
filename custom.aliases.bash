alias bi="bash-it"
alias g="git"
alias d="docker"
alias dc="docker-compose"
alias be="bundle exec"

case $OSTYPE in
  darwin*)
    alias brew='PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew'
    ;;
  *)
    ;;
esac

