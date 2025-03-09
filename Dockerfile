FROM ubuntu:latest

WORKDIR /root/srcs

RUN apt update && \
	apt upgrade -y && \
	apt install -y \
	build-essential \
	make \
	zsh \
	vim \
	curl && \
	apt clean && rm -rf /var/lib/apt/lists/*

# RUN apt update && apt install -y valgrind
COPY zshrc /root/.zshrc

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH=/root/.local/bin:$PATH
RUN uv tool install norminette && \
	uv tool install c-formatter-42

RUN mkdir -p ~/.vim/plugin
COPY libs/stdheader/stdheader.vim /root/.vim/plugin/

CMD ["zsh"]
