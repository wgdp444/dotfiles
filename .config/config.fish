if status is-interactive
    # Commands to run in interactive sessions can go here
end

# gcloud
if test -f '~/Downloads/google-cloud-sdk/path.zsh.inc'
    . '~/Downloads/google-cloud-sdk/path.zsh.inc'
end

if test -f '~/Downloads/google-cloud-sdk/completion.zsh.inc'
    . '~/Downloads/google-cloud-sdk/completion.zsh.inc'
end

# openssl
set -x LDFLAGS "-L/usr/local/opt/openssl/lib"
set -x CPPFLAGS "-I/usr/local/opt/openssl/include"
set -x PATH "/opt/homebrew/opt/openssl@1.1/bin:$PATH"

# pyenv
set -x PYENV_ROOT "$HOME/.pyenv"
set -x PATH $PYENV_ROOT/bin $PATH
pyenv init - | source