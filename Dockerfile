FROM ubuntu:latest

WORKDIR /root/srcs

RUN apt update && \
	apt upgrade -y && \
	apt install -y \
	build-essential \
	make \
	zsh \
	vim \
	valgrind \
	clang-format \
	curl && \
	apt clean && rm -rf /var/lib/apt/lists/*

COPY zshrc /root/.zshrc

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH=/root/.local/bin:$PATH
RUN uv tool install norminette && \
	uv tool install c-formatter-42

RUN	rm /root/.local/share/uv/tools/c-formatter-42/lib/python3.12/site-packages/c_formatter_42/data/clang-format-linux && \
	ln -s /usr/bin/clang-format \
	/root/.local/share/uv/tools/c-formatter-42/lib/python3.12/site-packages/c_formatter_42/data/clang-format-linux

RUN mkdir -p ~/.vim/plugin
COPY libs/stdheader/stdheader.vim /root/.vim/plugin/

CMD ["zsh"]
