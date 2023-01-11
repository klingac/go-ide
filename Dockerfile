FROM fedora:36
LABEL maintainer="devklingac@gmail.com"

RUN dnf update -y && dnf upgrade -y

RUN dnf install -y git curl \
	bash \
	vim \
	go \
	fzf \
	tig

ENV HOME /root
ENV GOPATH ${HOME}/go
ENV PATH ${GOPATH}/bin:$PATH

#RUN curl https://raw.githubusercontent.com/klingac/dotfiles/main/readonly_dot_vimrc?token=GHSAT0AAAAAABWQSWIITXTEFZ4M32UFBD7AYWNMIJQQ -o $HOME/.vimrc
COPY vimrc ${HOME}/.vimrc
COPY install_plugins.vim ${HOME}/install_plugins.vim

RUN mkdir -p ${HOME}/.vim/bundle &&\
    git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim
COPY plugins.vim ${HOME}/.vim/plugins.vim

RUN git config --global credential.helper store
#COPY git-credentials ${HOME}/.git-credentials

RUN vim -es -u ${HOME}/.vim/plugins.vim -i NONE -c "PluginInstall" -c "qa"
#RUN vim -es -u ${HOME}/.vimrc -i NONE -c "PluginInstall" -c "qa"
#RUN vim -eN +PluginInstall +qa
#RUN vim -eN +PluginInstall +qa
#RUN vim -u install_plugins.vim
#RUN vim -e -c "GoInstallBinaries" -c "qa"
RUN vim -es -u ${HOME}/.vim/plugins.vim -i NONE  -c "GoInstallBinaries" -c "qa"

