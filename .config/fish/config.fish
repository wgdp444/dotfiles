if status is-interactive

end


# gcloud
if test -f '~/Downloads/google-cloud-sdk/path.zsh.inc'
    . '~/Downloads/google-cloud-sdk/path.zsh.inc'
end

if test -f '~/Downloads/google-cloud-sdk/completion.zsh.inc'
    . '~/Downloads/google-cloud-sdk/completion.zsh.inc'
end

# /usr/local/bin /usr/bin
set -x PATH /usr/local/bin
set -x PATH /usr/bin

# homebrew
set -x PATH /opt/homebrew/bin $PATH

# openssl
set -x LDFLAGS "-L/usr/local/opt/openssl/lib"
set -x CPPFLAGS "-I/usr/local/opt/openssl/include"
set -x PATH "/opt/homebrew/opt/openssl@1.1/bin:$PATH"

# pyenv
set -x PYENV_ROOT "$HOME/.pyenv"
set -x PATH $PYENV_ROOT/bin $PATH
pyenv init - | source

# rust
set -x PATH "$HOME/.cargo/bin" $PATH

# start starship!!
starship init fish | source
