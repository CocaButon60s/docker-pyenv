FROM FROM tensorflow/tensorflow:latest-gpu

RUN <<EOL
ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
apt update

# install pyenv
apt install -y git locales-all wget gcc build-essential libssl-dev libffi-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
EOL