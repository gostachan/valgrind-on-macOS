FROM --platform=linux/x86_64 ubuntu:latest

WORKDIR /root/srcs

RUN apt update && \
	apt upgrade -y && \
	apt install -y \
	build-essential \
	make \
	zsh \
	vim \
	python3 \
	python3-venv \
	pipx \
	curl \
	lsb-release \
	wget \
	software-properties-common \
	file \
	gnupg && \
	apt clean && rm -rf /var/lib/apt/lists/*

RUN apt update && apt install -y valgrind

# zshrc
COPY zshrc /root/.zshrc
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH=/root/.local/bin:$PATH
# norminette
RUN uv tool install norminette && \
    uv tool install c-formatter-42

# header
RUN mkdir -p ~/.vim/plugin
COPY libs/stdheader/stdheader.vim /root/.vim/plugin/

ENV PATH="/root/.local/bin:$PATH"

CMD ["zsh"]
