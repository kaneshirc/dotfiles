bind '"\C-f": forward-word'
bind '"\C-b": backward-word'

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

export PIPENV_VENV_IN_PROJECT=true

GOOGLE_CLOUD_SDK='/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk'
if [ -e $GOOGLE_CLOUD_SDK ]; then
  source $GOOGLE_CLOUD_SDK/path.bash.inc
  source $GOOGLE_CLOUD_SDK/completion.bash.inc
fi
